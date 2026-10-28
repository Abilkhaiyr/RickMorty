// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appName => 'Рик пен Морти';

  @override
  String get searchCharacters => 'Кейіпкерлерді іздеу';

  @override
  String get characterDetails => 'Кейіпкер туралы';

  @override
  String get noCharactersFound => 'Кейіпкерлер табылмады';

  @override
  String get retry => 'Қайталау';

  @override
  String get status => 'Күйі';

  @override
  String get species => 'Түрі';

  @override
  String get origin => 'Шыққан жері';

  @override
  String get currentLocation => 'Қазіргі орналасқан жері';

  @override
  String get explorerTitle => 'Мультиғаламды зерттеңіз';

  @override
  String get explorerSubtitle => 'Барлық өлшемдегі кейіпкерлер';

  @override
  String get searchTitle => 'Кейіпкерді табыңыз';

  @override
  String get searchSubtitle => 'Шексіз өлшемдерден іздеу';

  @override
  String get searchHint => 'Кейіпкерлерді іздеу...';

  @override
  String get charactersLabel => 'КЕЙІПКЕРЛЕР';

  @override
  String discoveredCount(int count) {
    return 'Табылды: $count';
  }

  @override
  String resultsFor(String query) {
    return '«$query» НӘТИЖЕЛЕРІ';
  }

  @override
  String get showingMatches => 'Сәйкестіктер';

  @override
  String get clearSearch => 'Іздеуді тазалау';

  @override
  String get emptySearchHint => 'Басқа атты іздеңіз немесе іздеуді тазалаңыз';

  @override
  String get networkErrorTitle => 'Басқа өлшемде адастық';

  @override
  String get networkErrorHint =>
      'Кейіпкерлер жүктелмеді.\nБайланысты тексеріп, қайталаңыз.';

  @override
  String get tryAgain => 'Қайта көру ↻';

  @override
  String get loadingCharacters => 'Кейіпкерлер жүктелуде';

  @override
  String get loadingMoreCharacters => 'Қосымша кейіпкерлер жүктелуде...';

  @override
  String get paginationErrorTitle => 'Қосымша кейіпкерлер жүктелмеді';

  @override
  String get previousResultsSafe => 'Алдыңғы нәтижелер сақталды';

  @override
  String get retryLoading => '↻  Қайта жүктеу';

  @override
  String get charactersTab => 'Кейіпкерлер';

  @override
  String get exploreTab => 'Шолу';

  @override
  String get exploreUnavailable => 'Шолу, жақында';

  @override
  String get characterProfile => 'КЕЙІПКЕР ПРОФИЛІ';

  @override
  String get identityLabel => 'АҚПАРАТ';

  @override
  String get detailErrorTitle => 'Кейіпкер қолжетімсіз';

  @override
  String get detailErrorHint =>
      'Кейіпкер жүктелмеді.\nБайланысты тексеріп, қайталаңыз.';
}
