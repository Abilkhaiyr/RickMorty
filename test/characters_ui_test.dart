import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rick_morty/src/core/constant/localization/translations/app_localizations.dart';
import 'package:rick_morty/src/core/theme/recources.dart';
import 'package:rick_morty/src/feature/characters/bloc/characters_cubit.dart';
import 'package:rick_morty/src/feature/characters/bloc/character_detail_cubit.dart';
import 'package:rick_morty/src/feature/characters/data/character_repository.dart';
import 'package:rick_morty/src/feature/characters/models/character.dart';
import 'package:rick_morty/src/feature/characters/presentation/pages/character_detail_page.dart';
import 'package:rick_morty/src/feature/characters/presentation/widgets/characters_view.dart';
import 'package:rick_morty/src/feature/characters/presentation/widgets/characters_skeleton.dart';

const _rick = Character(
  id: 1,
  name: 'Rick Sanchez',
  status: 'Alive',
  species: 'Human',
  image: '',
  origin: 'Earth (C-137)',
  location: 'Citadel of Ricks',
);
final _characters = [
  _rick,
  _rick.copyWith(id: 2, name: 'Morty Smith'),
  _rick.copyWith(id: 3, name: 'Summer Smith', origin: 'Earth (Replacement)'),
  _rick.copyWith(
    id: 4,
    name: 'Abradolf Lincler',
    status: 'Dead',
    origin: 'Earth (Replacement)',
  ),
];

class _Repository implements ICharacterRepository {
  Future<CharacterPage> Function(int page, String name) handler =
      (_, _) async => CharacterPage(
        characters: _characters,
        nextPage: null,
        totalCount: 826,
      );
  Future<Character> Function(int id) detailHandler = (_) async => _rick;
  @override
  Future<CharacterPage> getCharacters({required int page, String name = ''}) =>
      handler(page, name);
  @override
  Future<Character> getCharacter(int id) => detailHandler(id);
}

final _reviewKey = GlobalKey();

Widget _app(Widget child) => MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: AppThemes.dark,
  locale: const Locale('en'),
  supportedLocales: AppLocalizations.supportedLocales,
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  builder: (context, child) => RepaintBoundary(key: _reviewKey, child: child!),
  home: child,
);

Future<void> _capture(WidgetTester tester, String name) async {
  expect(tester.takeException(), isNull);
  // Rendering artifacts are ignored by git and can be regenerated with this test.
  if (!const bool.fromEnvironment('UI_REVIEW')) return;
  await tester.pump();
  final boundary =
      _reviewKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
  await tester.runAsync(() async {
    final image = await boundary.toImage(pixelRatio: 1);
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    final file = File('.dart_tool/ui-review/$name.png');
    await file.parent.create(recursive: true);
    await file.writeAsBytes(bytes!.buffer.asUint8List());
    image.dispose();
  });
}

void main() {
  setUpAll(() async {
    final loader = FontLoader('Inter')
      ..addFont(rootBundle.load('assets/fonts/Inter.ttf'));
    await loader.load();
    final symbols = FontLoader('Noto Sans Symbols 2')
      ..addFont(rootBundle.load('assets/fonts/NotoSansSymbols2.ttf'));
    await symbols.load();
    final icons = FontLoader('MaterialIcons')
      ..addFont(rootBundle.load('fonts/MaterialIcons-Regular.otf'));
    await icons.load();
    if (Platform.isWindows) {
      final emoji = FontLoader('Segoe UI Emoji')
        ..addFont(
          File(
            'C:/Windows/Fonts/seguiemj.ttf',
          ).readAsBytes().then((bytes) => ByteData.sublistView(bytes)),
        );
      await emoji.load();
    }
  });

  testWidgets('all Figma states render; clear search and retry recover', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    tester.view.padding = FakeViewPadding(top: 44, bottom: 14);
    addTearDown(tester.view.reset);
    final repository = _Repository();
    final cubit = CharactersCubit(repository: repository);
    addTearDown(cubit.close);
    final pending = Completer<CharacterPage>();
    repository.handler = (_, _) => pending.future;
    final initial = cubit.loadNext();
    await tester.pumpWidget(
      _app(BlocProvider.value(value: cubit, child: const CharactersView())),
    );
    await tester.pump();
    expect(find.byType(CharactersSkeleton), findsOneWidget);
    await _capture(tester, '04-loading');

    pending.complete(
      CharacterPage(characters: _characters, nextPage: null, totalCount: 826),
    );
    await tester.pump();
    await initial;
    await tester.pumpAndSettle();
    expect(find.text('826 discovered'), findsOneWidget);
    await _capture(tester, '01-catalogue');

    repository.handler = (_, _) async => CharacterPage(
      characters: [
        _characters[1],
        _characters[1].copyWith(id: 5, name: 'Evil Morty'),
        _characters[1].copyWith(id: 6, name: 'Morty Jr.', species: 'Humanoid'),
      ],
      nextPage: null,
      totalCount: 3,
    );
    await tester.enterText(find.byType(TextField), 'morty');
    await tester.pump(const Duration(milliseconds: 351));
    await tester.pumpAndSettle();
    expect(find.text('Evil Morty'), findsOneWidget);
    await _capture(tester, '02-search');

    repository.handler = (_, _) async =>
        const CharacterPage(characters: [], nextPage: null);
    await tester.enterText(find.byType(TextField), 'zzzxxy123');
    await tester.pump(const Duration(milliseconds: 351));
    await tester.pumpAndSettle();
    expect(find.text('No characters found'), findsOneWidget);
    await _capture(tester, '05-empty');
    repository.handler = (_, _) async => throw Exception('offline');
    await tester.tap(find.text('Clear search'));
    await tester.pump(const Duration(milliseconds: 351));
    await tester.pumpAndSettle();
    expect(cubit.state.query, isEmpty);
    expect(find.text('Lost in another dimension'), findsOneWidget);
    await _capture(tester, '06-network-error');

    final nextPage = Completer<CharacterPage>();
    repository.handler = (page, _) async => page == 1
        ? CharacterPage(
            characters: _characters.take(3).toList(),
            nextPage: 2,
            totalCount: 826,
          )
        : nextPage.future;
    await tester.tap(find.text('Try again ↻'));
    // The short viewport automatically requests the next page after success.
    await tester.pump();
    await tester.pump();
    await tester.pump();
    if (!cubit.state.loading) unawaited(cubit.loadNext());
    await tester.pump();
    expect(find.text('Rick Sanchez'), findsOneWidget);
    await _capture(tester, '07-pagination-loading');
    nextPage.completeError(Exception('offline'));
    await tester.pumpAndSettle();
    expect(find.text('Couldn’t load more characters'), findsOneWidget);
    expect(cubit.state.characters.length, 3);
    await _capture(tester, '08-pagination-error');
    repository.handler = (_, _) async => CharacterPage(
      characters: [_characters[3]],
      nextPage: null,
      totalCount: 826,
    );
    await tester.tap(find.text('↻  Retry loading'));
    await tester.pumpAndSettle();
    expect(cubit.state.characters.length, 4);
    expect(cubit.state.error, isNull);

    final detail = CharacterDetailCubit(
      repository: repository,
      id: 1,
      initial: _rick,
    );
    addTearDown(detail.close);
    await tester.pumpWidget(
      _app(
        BlocProvider.value(value: detail, child: const CharacterDetailView()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Citadel of Ricks'), findsOneWidget);
    await _capture(tester, '03-profile');

    tester.view.physicalSize = const Size(320, 568);
    await tester.pumpAndSettle();
    await _capture(tester, '09-profile-small');
    await tester.pumpWidget(
      _app(
        MediaQuery(
          data: const MediaQueryData(
            size: Size(320, 568),
            textScaler: TextScaler.linear(1.5),
          ),
          child: BlocProvider.value(
            value: cubit,
            child: const CharactersView(),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await _capture(tester, '10-catalogue-large-text');
    await tester.pumpWidget(const SizedBox.shrink());
  });

  testWidgets('direct profile fetch handles failure and retries', (
    tester,
  ) async {
    final repository = _Repository();
    final pending = Completer<Character>();
    repository.detailHandler = (_) => pending.future;
    final cubit = CharacterDetailCubit(repository: repository, id: 1);
    addTearDown(cubit.close);
    final initial = cubit.load();
    await tester.pumpWidget(
      _app(
        BlocProvider.value(value: cubit, child: const CharacterDetailView()),
      ),
    );
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    pending.completeError(Exception('offline'));
    await tester.pump();
    await initial;
    await tester.pumpAndSettle();
    expect(find.text('Character unavailable'), findsOneWidget);
    repository.detailHandler = (_) async => _rick;
    await tester.tap(find.text('Try again ↻'));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('Citadel of Ricks'), 200);
    expect(find.text('Citadel of Ricks'), findsOneWidget);
    await tester.pumpWidget(const SizedBox.shrink());
  });
}
