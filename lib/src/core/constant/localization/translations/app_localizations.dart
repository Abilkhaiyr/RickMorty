import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'translations/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('kk'),
    Locale('ru'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Rick and Morty'**
  String get appName;

  /// No description provided for @searchCharacters.
  ///
  /// In en, this message translates to:
  /// **'Search characters'**
  String get searchCharacters;

  /// No description provided for @characterDetails.
  ///
  /// In en, this message translates to:
  /// **'Character details'**
  String get characterDetails;

  /// No description provided for @noCharactersFound.
  ///
  /// In en, this message translates to:
  /// **'No characters found'**
  String get noCharactersFound;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @species.
  ///
  /// In en, this message translates to:
  /// **'Species'**
  String get species;

  /// No description provided for @origin.
  ///
  /// In en, this message translates to:
  /// **'Origin'**
  String get origin;

  /// No description provided for @currentLocation.
  ///
  /// In en, this message translates to:
  /// **'Current location'**
  String get currentLocation;

  /// No description provided for @explorerTitle.
  ///
  /// In en, this message translates to:
  /// **'Explore the multiverse'**
  String get explorerTitle;

  /// No description provided for @explorerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Discover every character across dimensions'**
  String get explorerSubtitle;

  /// No description provided for @searchTitle.
  ///
  /// In en, this message translates to:
  /// **'Find a character'**
  String get searchTitle;

  /// No description provided for @searchSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Search across infinite dimensions'**
  String get searchSubtitle;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search characters...'**
  String get searchHint;

  /// No description provided for @charactersLabel.
  ///
  /// In en, this message translates to:
  /// **'CHARACTERS'**
  String get charactersLabel;

  /// No description provided for @discoveredCount.
  ///
  /// In en, this message translates to:
  /// **'{count} discovered'**
  String discoveredCount(int count);

  /// No description provided for @resultsFor.
  ///
  /// In en, this message translates to:
  /// **'RESULTS FOR “{query}”'**
  String resultsFor(String query);

  /// No description provided for @showingMatches.
  ///
  /// In en, this message translates to:
  /// **'Showing matches'**
  String get showingMatches;

  /// No description provided for @clearSearch.
  ///
  /// In en, this message translates to:
  /// **'Clear search'**
  String get clearSearch;

  /// No description provided for @emptySearchHint.
  ///
  /// In en, this message translates to:
  /// **'Try another name or clear your search'**
  String get emptySearchHint;

  /// No description provided for @networkErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Lost in another dimension'**
  String get networkErrorTitle;

  /// No description provided for @networkErrorHint.
  ///
  /// In en, this message translates to:
  /// **'Unable to load characters. Check your\nconnection and try again.'**
  String get networkErrorHint;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again ↻'**
  String get tryAgain;

  /// No description provided for @loadingCharacters.
  ///
  /// In en, this message translates to:
  /// **'Loading characters'**
  String get loadingCharacters;

  /// No description provided for @loadingMoreCharacters.
  ///
  /// In en, this message translates to:
  /// **'Loading more characters...'**
  String get loadingMoreCharacters;

  /// No description provided for @paginationErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Couldn’t load more characters'**
  String get paginationErrorTitle;

  /// No description provided for @previousResultsSafe.
  ///
  /// In en, this message translates to:
  /// **'Your previous results are safe'**
  String get previousResultsSafe;

  /// No description provided for @retryLoading.
  ///
  /// In en, this message translates to:
  /// **'↻  Retry loading'**
  String get retryLoading;

  /// No description provided for @charactersTab.
  ///
  /// In en, this message translates to:
  /// **'Characters'**
  String get charactersTab;

  /// No description provided for @exploreTab.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get exploreTab;

  /// No description provided for @exploreUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Explore, coming soon'**
  String get exploreUnavailable;

  /// No description provided for @characterProfile.
  ///
  /// In en, this message translates to:
  /// **'CHARACTER PROFILE'**
  String get characterProfile;

  /// No description provided for @identityLabel.
  ///
  /// In en, this message translates to:
  /// **'IDENTITY'**
  String get identityLabel;

  /// No description provided for @detailErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Character unavailable'**
  String get detailErrorTitle;

  /// No description provided for @detailErrorHint.
  ///
  /// In en, this message translates to:
  /// **'Unable to load this character.\nCheck your connection and try again.'**
  String get detailErrorHint;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'kk', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'kk':
      return AppLocalizationsKk();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
