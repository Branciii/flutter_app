import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_app/themes/themes.dart';
import 'package:flutter_app/router/router.dart';

class ScreenLayout extends StatelessWidget {
  const ScreenLayout(
      {Key? key, required this.title, this.child, this.back, this.homePage})
      : super(key: key);

  final String title;
  final Widget? child;
  final VoidCallback? back;
  final bool? homePage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(children: [
            if (back != null)
              BackButton(
                onPressed: back,
              ),
            Text(title,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w400))
          ]),
          actions: [
            if (homePage ?? false)
              TextButton(
                child: const Text('Settings',
                    style: TextStyle(color: ThemeColours.textPrimary)),
                onPressed: () =>
                    context.goNamed(AppRouteName.userInformation.routeName),
              )
          ],
        ),
        body: child);
  }
}
