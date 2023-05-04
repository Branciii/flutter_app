import 'package:flutter/material.dart';

import 'package:flutter_app/injector/injector.dart';
import 'package:flutter_app/router/router.dart';

import 'package:flutter_app/themes/themes.dart';

void main() {
  configureDependencies();
  final router = Injector.locateService<IRouter>();
  runApp(MyApp(appRouter: router));
}

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.appRouter});

  final IRouter appRouter;
  final _appTheme = AppTheme();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: _appTheme.lightThemeData,
      darkTheme: _appTheme.darkThemeData,
    );
  }
}
