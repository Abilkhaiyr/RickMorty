import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import '../../../core/theme/recources.dart';
import '../../../core/constant/localization/localization.dart';
import '../../../core/presentation/widgets/other/custom_loading_overlay_widget.dart';
import '../../settings/widget/settings_scope.dart';
import '../bloc/app_restart_bloc.dart';
import '../router/app_router.dart';
import 'widgets/app_router_builder.dart';
import '../initialization/widget/dependencies_scope.dart';

class MaterialContext extends StatelessWidget {
  const MaterialContext({super.key});
  @override
  Widget build(BuildContext context) {
    final dependencies = DependenciesScope.of(context);
    final settings = SettingsScope.settingsOf(context);
    return BlocListener<AppRestartBloc, AppRestartState>(
      listener: (context, state) {
        state.whenOrNull(
          loaded: (_) {
            dependencies.appRouter.replaceAll([const LauncherRoute()]);
          },
        );
      },
      child: AppRouterBuilder(
        createRouter: (_) => dependencies.appRouter,
        builder: (context, informationParser, routerDelegate, router) =>
            MaterialApp.router(
              title: dependencies.config.appName,
              debugShowCheckedModeBanner: false,
              theme: settings.appTheme?.lightTheme ?? AppThemes.light,
              darkTheme: settings.appTheme?.darkTheme ?? AppThemes.dark,
              themeMode: settings.appTheme?.themeMode ?? ThemeMode.dark,
              locale: settings.locale,
              supportedLocales: Localization.supportedLocales,
              localizationsDelegates: Localization.localizationDelegates,
              routerDelegate: routerDelegate,
              routeInformationParser: informationParser,
              builder: (context, child) => MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaler: settings.textScale == null
                      ? MediaQuery.textScalerOf(context)
                      : TextScaler.linear(settings.textScale!),
                ),
                child: LoaderOverlay(
                  overlayColor: AppColors.mainColor.withValues(alpha: .3),
                  overlayWidgetBuilder: (_) =>
                      const CustomLoadingOverlayWidget(),
                  child: child!,
                ),
              ),
            ),
      ),
    );
  }
}
