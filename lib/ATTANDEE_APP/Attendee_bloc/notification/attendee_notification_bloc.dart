import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'attendee_notification_event.dart';
part 'attendee_notification_state.dart';

class AttendeeNotificationBloc extends Bloc<AttendeeNotificationEvent, AttendeeNotificationState> {
  AttendeeNotificationBloc() : super(AttendeeNotificationInitial()) {
    on<AttendeeNotificationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
