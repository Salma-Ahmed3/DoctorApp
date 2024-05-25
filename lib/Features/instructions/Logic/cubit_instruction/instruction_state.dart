part of 'instruction_cubit.dart';

sealed class InstructionState extends Equatable {
  const InstructionState();

  @override
  List<Object> get props => [];
}

final class InstructionInitial extends InstructionState {}

final class InstructionLoading extends InstructionState {}

final class InstructionFailure extends InstructionState {
  final String errMessege;

  const InstructionFailure(this.errMessege);
}

final class InstructionSuccess extends InstructionState {
  final List<HealthAdviceModel> instruction;

  const InstructionSuccess(this.instruction);
}
