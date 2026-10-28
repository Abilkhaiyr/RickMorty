// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CharacterDetailPage]
class CharacterDetailRoute extends PageRouteInfo<CharacterDetailRouteArgs> {
  CharacterDetailRoute({
    required int id,
    Character? character,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         CharacterDetailRoute.name,
         args: CharacterDetailRouteArgs(id: id, character: character, key: key),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'CharacterDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CharacterDetailRouteArgs>(
        orElse: () => CharacterDetailRouteArgs(id: pathParams.getInt('id')),
      );
      return CharacterDetailPage(
        id: args.id,
        character: args.character,
        key: args.key,
      );
    },
  );
}

class CharacterDetailRouteArgs {
  const CharacterDetailRouteArgs({required this.id, this.character, this.key});

  final int id;

  final Character? character;

  final Key? key;

  @override
  String toString() {
    return 'CharacterDetailRouteArgs{id: $id, character: $character, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CharacterDetailRouteArgs) return false;
    return id == other.id && character == other.character && key == other.key;
  }

  @override
  int get hashCode => id.hashCode ^ character.hashCode ^ key.hashCode;
}

/// generated route for
/// [CharactersPage]
class CharactersRoute extends PageRouteInfo<void> {
  const CharactersRoute({List<PageRouteInfo>? children})
    : super(CharactersRoute.name, initialChildren: children);

  static const String name = 'CharactersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CharactersPage();
    },
  );
}

/// generated route for
/// [Launcher]
class LauncherRoute extends PageRouteInfo<void> {
  const LauncherRoute({List<PageRouteInfo>? children})
    : super(LauncherRoute.name, initialChildren: children);

  static const String name = 'LauncherRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const Launcher();
    },
  );
}
