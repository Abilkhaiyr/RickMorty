// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Rick and Morty';

  @override
  String get searchCharacters => 'Search characters';

  @override
  String get characterDetails => 'Character details';

  @override
  String get noCharactersFound => 'No characters found';

  @override
  String get retry => 'Retry';

  @override
  String get status => 'Status';

  @override
  String get species => 'Species';

  @override
  String get origin => 'Origin';

  @override
  String get currentLocation => 'Current location';

  @override
  String get explorerTitle => 'Explore the multiverse';

  @override
  String get explorerSubtitle => 'Discover every character across dimensions';

  @override
  String get searchTitle => 'Find a character';

  @override
  String get searchSubtitle => 'Search across infinite dimensions';

  @override
  String get searchHint => 'Search characters...';

  @override
  String get charactersLabel => 'CHARACTERS';

  @override
  String discoveredCount(int count) {
    return '$count discovered';
  }

  @override
  String resultsFor(String query) {
    return 'RESULTS FOR “$query”';
  }

  @override
  String get showingMatches => 'Showing matches';

  @override
  String get clearSearch => 'Clear search';

  @override
  String get emptySearchHint => 'Try another name or clear your search';

  @override
  String get networkErrorTitle => 'Lost in another dimension';

  @override
  String get networkErrorHint =>
      'Unable to load characters. Check your\nconnection and try again.';

  @override
  String get tryAgain => 'Try again ↻';

  @override
  String get loadingCharacters => 'Loading characters';

  @override
  String get loadingMoreCharacters => 'Loading more characters...';

  @override
  String get paginationErrorTitle => 'Couldn’t load more characters';

  @override
  String get previousResultsSafe => 'Your previous results are safe';

  @override
  String get retryLoading => '↻  Retry loading';

  @override
  String get charactersTab => 'Characters';

  @override
  String get exploreTab => 'Explore';

  @override
  String get exploreUnavailable => 'Explore, coming soon';

  @override
  String get characterProfile => 'CHARACTER PROFILE';

  @override
  String get identityLabel => 'IDENTITY';

  @override
  String get detailErrorTitle => 'Character unavailable';

  @override
  String get detailErrorHint =>
      'Unable to load this character.\nCheck your connection and try again.';
}
