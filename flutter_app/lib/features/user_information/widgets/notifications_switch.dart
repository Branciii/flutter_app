import 'package:flutter/material.dart';
import 'package:flutter_app/themes/themes.dart';

class NotificationsSwitch extends StatelessWidget {
  const NotificationsSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NotificationsWidget();
  }
}

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({Key? key}) : super(key: key);

  @override
  State<NotificationsWidget> createState() => NotificationsSwitchState();
}

class NotificationsSwitchState extends State<NotificationsWidget> {
  late bool enabledNotifications;
  @override
  initState() {
    enabledNotifications = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text('Notifications',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400))),
        Switch(
          activeColor: ThemeColours.navbarColour,
          value: enabledNotifications,
          onChanged: (value) => setState(() {
            enabledNotifications = value;
          }),
        ),
      ]),
    );
  }
}
