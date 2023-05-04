import 'package:flutter/material.dart';
import 'package:flutter_app/themes/themes.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_app/router/router.dart';
import 'package:flutter_app/components/components.dart';

import '../widgets/widgets.dart';

class UserInformationScreen extends StatelessWidget {
  const UserInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
        title: "Settings",
        back: () => context.goNamed(AppRouteName.homeScreen.routeName),
        child: const Padding(
            padding: EdgeInsets.all(15), child: UserInformationWidget()));
  }
}

class UserInformationWidget extends StatefulWidget {
  const UserInformationWidget({Key? key}) : super(key: key);

  @override
  State<UserInformationWidget> createState() => UserInformationState();
}

class UserInformationState extends State<UserInformationWidget> {
  late bool showAdditionalInfo;
  late bool enabledNotifications;
  late bool enabledMessages;

  @override
  initState() {
    showAdditionalInfo = false;
    enabledNotifications = false;
    enabledMessages = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 25),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
        Text('Username',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
        Text('Lily87',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400))
      ]),
      const SizedBox(height: 25),
      const Divider(),
      const SizedBox(height: 25),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Email',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          Text('Lili@mail.com',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400))
        ],
      ),
      const SizedBox(height: 25),
      const Divider(),
      const SizedBox(height: 25),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text('Show additional settings',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: ThemeColours.lightText)),
        SizedBox(
            height: 42,
            width: 42,
            child: IconButton(
              onPressed: () {
                setState(() {
                  showAdditionalInfo = !showAdditionalInfo;
                });
              },
              icon: showAdditionalInfo
                  ? Image.asset('assets/images/arrow_outward.png')
                  : Image.asset('assets/images/arrow_southeast.png'),
              splashRadius: 28,
            ))
      ]),
      const SizedBox(height: 15),
      if (showAdditionalInfo)
        Container(
            decoration: BoxDecoration(
                color: ThemeColours.lightBackground,
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              children: [
                /*Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text('Notifications',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400))),
                        Switch(
                          activeColor: ThemeColours.navbarColour,
                          value: enabledNotifications,
                          onChanged: (value) => setState(() {
                            enabledNotifications = value;
                          }),
                        ),
                      ]),
                ),*/
                const NotificationsSwitch(),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text('Messages',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400))),
                        Switch(
                          activeColor: ThemeColours.navbarColour,
                          value: enabledMessages,
                          onChanged: (value) => setState(() {
                            enabledMessages = value;
                          }),
                        )
                      ]),
                ),
              ],
            ))
    ]);
  }
}
