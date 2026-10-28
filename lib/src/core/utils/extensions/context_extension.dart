import 'package:flutter/material.dart';
import '../../../feature/app/initialization/models/dependencies_container.dart';
import '../../../feature/app/initialization/widget/dependencies_scope.dart';
import '../../../feature/settings/widget/settings_scope.dart';
import '../../containers/repository_storage.dart';
import '../../presentation/scopes/repository_scope.dart';
import '../../constant/localization/localization.dart';
import '../../constant/localization/translations/app_localizations.dart';

extension ContextExtension on BuildContext {
  AppLocalizations get localized => Localization.of(this);
  DependenciesContainer get dependencies => DependenciesScope.of(this);
  IRepositoryStorage get repository => RepositoryScope.of(this);
  Locale get currentLocale =>
      SettingsScope.settingsOf(this).locale ?? const Locale('en');
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => MediaQuery.sizeOf(this);
  EdgeInsets get viewPadding => MediaQuery.viewPaddingOf(this);
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}
