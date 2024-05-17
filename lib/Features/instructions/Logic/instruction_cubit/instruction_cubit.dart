import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gbsub/Features/instructions/Model/instruction.dart';
import 'package:gbsub/Features/instructions/repos/instruction_repo.dart';

part 'instruction_state.dart';

class InstructionCubit extends Cubit<InstructionState> {
  InstructionCubit(this.instructionRepo) : super(InstructionInitial());

  final InstructionRepo instructionRepo;

  Future<void> fetchNameDoctor() async {
    emit(InstructionLoading());
    var result = await instructionRepo.fetchNameDoctor();
    result.fold((failure) {
      emit(InstructionFailure(failure.errMessage));
    }, (instructionModel) {
      emit(InstructionSuccess(instructionModel));
    });
  }
}
