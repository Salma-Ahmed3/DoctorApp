import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Features/instructions/Logic/cubit_new_instruction/new_instruction_state.dart';
import 'package:gbsub/Features/instructions/repos/instruction_repo.dart';

class NewInstructionCubit extends Cubit<NewInstructionState> {
  NewInstructionCubit(this.instructionRepo) : super(NewInstructionInitial());

  final InstructionRepo instructionRepo;

  Future<void> fetchHealthAdviceNew(
      {required int pageNum, required int pagesize}) async {
    emit(NewInstructionLoading());
    var result = await instructionRepo.fetchHealthAdviceNew(
        pageNum: pageNum, pagesize: pagesize);

    result.fold((failure) {
      emit(NewInstructionFailure(failure.errMessage));
    }, (instructionModel) {
      emit(NewInstructionSuccess(instructionModel));
    });
  }
}
