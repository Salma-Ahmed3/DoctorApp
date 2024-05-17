import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gbsub/Features/instructions/Model/instruction.dart';
import 'package:gbsub/Features/instructions/repos/instruction_repo.dart';

part 'spec_state.dart';

class SpecCubit extends Cubit<SpecState> {
  SpecCubit(this.instructionRepo) : super(SpecInitial());

  final InstructionRepo instructionRepo;

  Future<void> fetchSpecDoctor() async {
    emit(SpecLoading());
    var result = await instructionRepo.fetchSpecDoctor();
    result.fold((failure) {
      emit(SpecFailuer(failure.errMessage));
    }, (instructionModel) {
      emit(SpecSuccess(instructionModel));
    });
  }
}
