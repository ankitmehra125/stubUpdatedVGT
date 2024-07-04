import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'attendee_profile_event.dart';
part 'attendee_profile_state.dart';

class AttendeeProfileBloc extends Bloc<AttendeeProfileEvent, AttendeeProfileState> {
  AttendeeProfileBloc() : super(AttendeeProfileInitial()) {
    on<AttendeeProfileEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
