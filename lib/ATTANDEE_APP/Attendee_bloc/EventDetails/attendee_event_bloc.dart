import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'attendee_event_event.dart';
part 'attendee_event_state.dart';

class AttendeeEventBloc extends Bloc<AttendeeEventEvent, AttendeeEventState> {
  AttendeeEventBloc() : super(AttendeeEventInitial()) {
    on<AttendeeEventEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
