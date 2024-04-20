part of 'increment_bloc.dart';

abstract class IncrementState {}

class IncrementInitial extends IncrementState {
  final int countIntial;
  IncrementInitial(this.countIntial);
}

class IncrementStateCount extends IncrementState {
  final int count;
  IncrementStateCount(this.count);
}
