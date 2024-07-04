import 'package:bloc/bloc.dart';

import 'attendee_home_event.dart';
import 'attendee_home_state.dart';


class AttendeeHomeBloc extends Bloc<AttendeeHomeEvent, AttendeeHomeState> {
  AttendeeHomeBloc() : super(AttendeeHomeState()) {
    on<AttendeeHomeEvent>((event, emit) {
    });
  }


}
