import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'attendee_tickets_event.dart';
part 'attendee_tickets_state.dart';

class AttendeeTicketsBloc extends Bloc<AttendeeTicketsEvent, AttendeeTicketsState> {
  AttendeeTicketsBloc() : super(AttendeeTicketsInitial()) {
    on<AttendeeTicketsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
