import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'notifications_switch_state.dart';

@Injectable()
class NotificationsSwitchCubit extends Cubit<NotificationsSwitchState> {
  NotificationsSwitchCubit() : super(const NotificationsSwitchState());

  onNotificationsSwitchChange() {
    final newState =
        state.copyWith(enabledNotifications: !state.enabledNotifications);
    emit(newState);
  }
}
