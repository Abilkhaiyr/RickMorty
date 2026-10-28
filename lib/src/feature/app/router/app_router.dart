import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../characters/models/character.dart';
import '../../characters/presentation/pages/characters_page.dart';
import '../../characters/presentation/pages/character_detail_page.dart';
import '../presentation/pages/launcher.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: LauncherRoute.page,
      path: '/',
      initial: true,
      children: [
        AutoRoute(page: CharactersRoute.page, path: '', initial: true),
      ],
    ),
    AutoRoute(page: CharacterDetailRoute.page, path: '/characters/:id'),
  ];
}
