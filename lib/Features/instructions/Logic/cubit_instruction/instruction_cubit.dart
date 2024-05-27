import 'package:bloc/bloc.dart';
import 'package:gbsub/Features/instructions/Model/instruction_models.dart';
import 'package:gbsub/Features/instructions/repos/instruction_repo.dart';

part 'instruction_state.dart';

class InstructionCubit extends Cubit<InstructionState> {
  InstructionCubit(this.instructionRepo) : super(InstructionInitial());

  final InstructionRepo instructionRepo;

  Future<void> fetchHealthadvice(
      {required int pageNum, required int pagesize}) async {
    emit(InstructionLoading());
    var result = await instructionRepo.fetchHealthAdvice(
        pageNum: pageNum, pagesize: pagesize);

    result.fold((failure) {
      emit(InstructionFailure(failure.errMessage));
    }, (instructionModel) {
      emit(InstructionSuccess(instructionModel));
    });
  }
}
