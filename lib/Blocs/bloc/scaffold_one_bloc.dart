import 'package:bloc/bloc.dart';

part 'scaffold_one_event.dart';
part 'scaffold_one_state.dart';

class ScaffoldOneBloc extends Bloc<ScaffoldOneEvent, ScaffoldOneState> {
  int count = 0;
  ScaffoldOneBloc() : super(InitialState(0)) {
    on<ScaffoldOneEvent>((event, emit) {
      if (event is IncrementFireEvent) {
        count++;
        emit(IncrementState(count));
      }
    });
    // on<ScaffoldOneEvent>((event, emit) {
    //   if (event is DecrementFireEvent) {
    //     count--;
    //     emit(DecermentState(count));
    //   }
    // });
  }
}
