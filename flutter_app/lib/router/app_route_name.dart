class AppRouteName {
  static const AppRoute userInformation =
      AppRoute(routeName: 'user_information', path: '/user_information');
  static const AppRoute homeScreen =
      AppRoute(routeName: 'home_screen', path: '/home_screen');
  static const AppRoute root = AppRoute(routeName: 'root', path: '/');
}

class AppRoute {
  const AppRoute({required this.routeName, required this.path});

  final String routeName;
  final String path;
}
