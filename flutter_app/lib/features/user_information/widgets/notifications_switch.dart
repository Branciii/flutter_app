import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_app/injector/injector.dart';
import 'package:flutter_app/themes/themes.dart';

import '../bloc/notifications_switch_cubit.dart';

class NotificationsSwitch extends StatelessWidget {
  const NotificationsSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotificationsSwitchCubit>(
        create: (_) => Injector.locateService<NotificationsSwitchCubit>(),
        child: const NotificationsWidget());
  }
}

class NotificationsWidget extends StatelessWidget {
  const NotificationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsSwitchCubit, NotificationsSwitchState>(
        builder: (context, state) {
      final cubit = context.read<NotificationsSwitchCubit>();
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text('Notifications',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400))),
          Switch(
            activeColor: ThemeColours.navbarColour,
            value: state.enabledNotifications,
            onChanged: (value) => cubit.onNotificationsSwitchChange(),
          ),
        ]),
      );
    });
  }
}
