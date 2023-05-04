part of 'notifications_switch_cubit.dart';

class NotificationsSwitchState extends Equatable {
  const NotificationsSwitchState({this.enabledNotifications = false});

  final bool enabledNotifications;

  NotificationsSwitchState copyWith({bool? enabledNotifications}) {
    return NotificationsSwitchState(
      enabledNotifications: enabledNotifications ?? this.enabledNotifications,
    );
  }

  @override
  List<Object?> get props => [enabledNotifications];
}
