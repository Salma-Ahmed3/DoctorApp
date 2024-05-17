part of 'spec_cubit.dart';

sealed class SpecState extends Equatable {
  const SpecState();

  @override
  List<Object> get props => [];
}

final class SpecInitial extends SpecState {}

final class SpecLoading extends SpecState {}

final class SpecFailuer extends SpecState {
  final String errMessege;

  const SpecFailuer(this.errMessege);
}

final class SpecSuccess extends SpecState {
  final List<InstructionModels> instruction;

  const SpecSuccess(this.instruction);
}
