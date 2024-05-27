import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Features/instructions/Logic/cubit_new_instruction/new_instruction_state.dart';
import 'package:gbsub/Features/instructions/repos/instruction_repo.dart';

class NewInstructionCubit extends Cubit<NewInstructionState> {
  NewInstructionCubit(this.instructionRepo) : super(NewInstructionInitial());

  final InstructionRepo instructionRepo;

  String content = '';

  Future<void> addNewHealthAdvice(
      {required int doctorId, required String content}) async {
    emit(NewInstructionLoading());
    var result = await instructionRepo.addNewHealthAdvice(
        doctorId: doctorId, content: content);
    result.fold((failure) {
      emit(NewInstructionFailure(failure.errMessage));
    }, (instructionModel) {
      emit(NewInstructionSuccess(instructionModel));
    });
  }

  void enterHealthAdvice(String value) {
    content = value;
    emit(InstructionChanged());
  }
}
