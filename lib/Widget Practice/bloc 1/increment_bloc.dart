import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'increment_event.dart';
part 'increment_state.dart';

class IncrementBloc extends Bloc<IncrementEvent, IncrementState> {
  int count = 0;
  IncrementBloc() : super(IncrementStateCount(0)) {
    on<IncrementEvent>((event, emit) {
      if (state is IncrementStateCount) {
        count++;
        emit(IncrementStateCount(count));
      }
    });
  }
}
