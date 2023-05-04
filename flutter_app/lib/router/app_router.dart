import 'package:flutter_app/features/user_information/user_information.dart';
import 'package:flutter_app/features/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter_app/router/router.dart';
import 'package:injectable/injectable.dart';

abstract class IRouter {
  GoRouter get router;
}

@Singleton(as: IRouter)
class AppRouter extends IRouter {
  AppRouter();

  // private navigators
  final _rootNavigatorKey = GlobalKey<NavigatorState>();

  @override
  GoRouter get router => _router;

  late final _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: AppRouteName.homeScreen.path,
    routes: [
      GoRoute(
          name: AppRouteName.userInformation.routeName,
          path: AppRouteName.userInformation.path,
          pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey, child: const UserInformationScreen())),
      GoRoute(
          name: AppRouteName.homeScreen.routeName,
          path: AppRouteName.homeScreen.path,
          pageBuilder: (context, state) =>
              MaterialPage<void>(key: state.pageKey, child: const HomeScreen()))
    ],
  );
}
