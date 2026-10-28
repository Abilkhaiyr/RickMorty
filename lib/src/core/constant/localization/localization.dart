import 'package:flutter/widgets.dart';
import 'translations/app_localizations.dart';

final class Localization {
  const Localization._();
  static List<Locale> get supportedLocales => AppLocalizations.supportedLocales;
  static List<LocalizationsDelegate<dynamic>> get localizationDelegates =>
      AppLocalizations.localizationsDelegates;
  static AppLocalizations of(BuildContext context) =>
      AppLocalizations.of(context)!;
  static Locale computeDefaultLocale() {
    final locale = WidgetsBinding.instance.platformDispatcher.locale;
    return supportedLocales.any(
          (supported) => supported.languageCode == locale.languageCode,
        )
        ? locale
        : const Locale('en');
  }
}
