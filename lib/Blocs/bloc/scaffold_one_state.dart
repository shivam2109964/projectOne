part of 'scaffold_one_bloc.dart';

abstract class ScaffoldOneState {}

class InitialState extends ScaffoldOneState {
  final int value;
  InitialState(this.value);
}

class IncrementState extends ScaffoldOneState {
  final int count;
  IncrementState(this.count);
}

class DecermentState extends ScaffoldOneState {
  final int count;
  DecermentState(this.count);
}
