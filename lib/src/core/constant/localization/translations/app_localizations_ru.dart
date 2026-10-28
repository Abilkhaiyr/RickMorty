// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'Рик и Морти';

  @override
  String get searchCharacters => 'Поиск персонажей';

  @override
  String get characterDetails => 'О персонаже';

  @override
  String get noCharactersFound => 'Персонажи не найдены';

  @override
  String get retry => 'Повторить';

  @override
  String get status => 'Статус';

  @override
  String get species => 'Вид';

  @override
  String get origin => 'Происхождение';

  @override
  String get currentLocation => 'Текущее местоположение';

  @override
  String get explorerTitle => 'Исследуйте мультивселенную';

  @override
  String get explorerSubtitle => 'Персонажи из всех измерений';

  @override
  String get searchTitle => 'Найдите персонажа';

  @override
  String get searchSubtitle => 'Поиск по бесконечным измерениям';

  @override
  String get searchHint => 'Поиск персонажей...';

  @override
  String get charactersLabel => 'ПЕРСОНАЖИ';

  @override
  String discoveredCount(int count) {
    return 'Найдено: $count';
  }

  @override
  String resultsFor(String query) {
    return 'РЕЗУЛЬТАТЫ ДЛЯ «$query»';
  }

  @override
  String get showingMatches => 'Совпадения';

  @override
  String get clearSearch => 'Очистить поиск';

  @override
  String get emptySearchHint => 'Попробуйте другое имя или очистите поиск';

  @override
  String get networkErrorTitle => 'Затерялись в другом измерении';

  @override
  String get networkErrorHint =>
      'Не удалось загрузить персонажей.\nПроверьте соединение и повторите попытку.';

  @override
  String get tryAgain => 'Попробовать снова ↻';

  @override
  String get loadingCharacters => 'Загрузка персонажей';

  @override
  String get loadingMoreCharacters => 'Загружаем ещё персонажей...';

  @override
  String get paginationErrorTitle => 'Не удалось загрузить ещё персонажей';

  @override
  String get previousResultsSafe => 'Предыдущие результаты сохранены';

  @override
  String get retryLoading => '↻  Повторить загрузку';

  @override
  String get charactersTab => 'Персонажи';

  @override
  String get exploreTab => 'Обзор';

  @override
  String get exploreUnavailable => 'Обзор, скоро';

  @override
  String get characterProfile => 'ПРОФИЛЬ ПЕРСОНАЖА';

  @override
  String get identityLabel => 'ИНФОРМАЦИЯ';

  @override
  String get detailErrorTitle => 'Персонаж недоступен';

  @override
  String get detailErrorHint =>
      'Не удалось загрузить персонажа.\nПроверьте соединение и повторите попытку.';
}
