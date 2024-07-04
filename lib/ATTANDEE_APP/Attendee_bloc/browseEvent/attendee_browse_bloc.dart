import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'attendee_browse_event.dart';
part 'attendee_browse_state.dart';

class AttendeeBrowseBloc extends Bloc<AttendeeBrowseEvent, AttendeeBrowseState> {
  AttendeeBrowseBloc() : super(AttendeeBrowseInitial()) {
    on<AttendeeBrowseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
