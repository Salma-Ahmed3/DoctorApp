import 'package:dartz/dartz.dart';
import 'package:gbsub/Core/utils/Errors/failure.dart';
import 'package:gbsub/Features/instructions/Model/instruction_models.dart';

abstract class InstructionRepo {
  Future<Either<Failure, List<HealthAdviceModel>>> fetchHealthAdvice(
      {required int pageNum, required int pagesize});
  Future<Either<Failure, bool>> addNewHealthAdvice(
      {required int doctorId, required String content});
}
