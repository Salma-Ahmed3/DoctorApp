import 'package:dartz/dartz.dart';
import 'package:gbsub/Core/utils/Errors/failure.dart';
import 'package:gbsub/Features/instructions/Model/instruction.dart';

abstract class InstructionRepo {
  Future<Either<Failure, List<InstructionModels>>> fetchNameDoctor();
  Future<Either<Failure, List<InstructionModels>>> fetchSpecDoctor();
  Future<Either<Failure, List<InstructionModels>>> fetchHealthAdvice();
}
