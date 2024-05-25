import 'package:equatable/equatable.dart';
import 'package:gbsub/Features/instructions/Model/instruction_models.dart';

sealed class NewInstructionState extends Equatable {
  const NewInstructionState();

  @override
  List<Object> get props => [];
}

final class NewInstructionInitial extends NewInstructionState {}

final class NewInstructionLoading extends NewInstructionState {}

final class NewInstructionFailure extends NewInstructionState {
  final String errMessege;

  const NewInstructionFailure(this.errMessege);
}

final class NewInstructionSuccess extends NewInstructionState {
  final List<HealthAdviceModel> instruction;

  const NewInstructionSuccess(this.instruction);
}
