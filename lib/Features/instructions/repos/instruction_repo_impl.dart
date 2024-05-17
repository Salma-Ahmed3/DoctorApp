// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:gbsub/Core/services/api_services.dart';
// import 'package:gbsub/Core/utils/Errors/failure.dart';
// import 'package:gbsub/Features/instructions/Model/instruction.dart';
// import 'package:gbsub/Features/instructions/repos/instruction_repo.dart';

// class InstructionRepoImpl implements InstructionRepo {
//   final ApiService apiService;

//   InstructionRepoImpl(this.apiService);

//   @override
//   Future<Either<Failure, List<InstructionModels>>> fetchNameDoctor() async {
//     try {
//       var data =
//           await apiService.get(endPoint: 'HealthAdvice?pageNum=1&pagesize=1');

//       List<InstructionModels> instruction = [];

//       for (var element in data['doctor']) {
//         try {
//           instruction.add(InstructionModels.fromJson(element));
//         } catch (e) {
//           // print(element);
//           instruction.add(InstructionModels.fromJson(element));
//         }
//       }

//       return right(instruction);
//     } catch (e) {
//       if (e is DioError) {
//         return left(
//           ServerFailure.fromDioError(e),
//         );
//       }
//       return left(
//         ServerFailure(
//           e.toString(),
//         ),
//       );
//     }
//   }

//   @override
//   Future<Either<Failure, List<InstructionModels>>> fetchSpecDoctor() async {
//     try {
//       var data =
//           await apiService.get(endPoint: 'HealthAdvice?pageNum=1&pagesize=1');

//       List<InstructionModels> spec = [];

//       for (var element in data['spec']) {
//         try {
//           spec.add(InstructionModels.fromJson(element));
//         } catch (e) {
//           // print(element);
//           spec.add(InstructionModels.fromJson(element));
//         }
//       }

//       return right(spec);
//     } catch (e) {
//       if (e is DioError) {
//         return left(
//           ServerFailure.fromDioError(e),
//         );
//       }
//       return left(
//         ServerFailure(
//           e.toString(),
//         ),
//       );
//     }
//   }

//   @override
//   Future<Either<Failure, List<InstructionModels>>> fetchHealthAdvice() async {
//     try {
//       var data =
//           await apiService.get(endPoint: 'HealthAdvice?pageNum=1&pagesize=1');

//       List<InstructionModels> healthAdvice = [];

//       for (var element in data['healthAdvice']) {
//         try {
//           healthAdvice.add(InstructionModels.fromJson(element));
//         } catch (e) {
//           // print(element);
//           healthAdvice.add(InstructionModels.fromJson(element));
//         }
//       }

//       return right(healthAdvice);
//     } catch (e) {
//       if (e is DioError) {
//         return left(
//           ServerFailure.fromDioError(e),
//         );
//       }
//       return left(
//         ServerFailure(
//           e.toString(),
//         ),
//       );
//     }
//   }
// }
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gbsub/Core/services/api_services.dart';
import 'package:gbsub/Core/utils/Errors/failure.dart';
import 'package:gbsub/Features/instructions/Model/instruction.dart';
import 'package:gbsub/Features/instructions/repos/instruction_repo.dart';

class InstructionRepoImpl implements InstructionRepo {
  final ApiService apiService;

  InstructionRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<InstructionModels>>> fetchNameDoctor() async {
    try {
      var data =
          await apiService.get(endPoint: 'HealthAdvice?pageNum=1&pagesize=1');

      List<InstructionModels> instruction = [];

      for (var element in data['doctor']) {
        try {
          instruction.add(InstructionModels.fromJson(element));
        } catch (e) {
          // print(element);
          instruction.add(InstructionModels.fromJson(element));
        }
      }
      for (var element in data['spec']) {
        try {
          instruction.add(InstructionModels.fromJson(element));
        } catch (e) {
          // print(element);
          instruction.add(InstructionModels.fromJson(element));
        }
      }
      for (var element in data['healthAdvice']) {
        try {
          instruction.add(InstructionModels.fromJson(element));
        } catch (e) {
          // print(element);
          instruction.add(InstructionModels.fromJson(element));
        }
      }

      return right(instruction);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<InstructionModels>>> fetchSpecDoctor() async {
    try {
      var data =
          await apiService.get(endPoint: 'HealthAdvice?pageNum=1&pagesize=1');

      List<InstructionModels> spec = [];

      for (var element in data['spec']) {
        try {
          spec.add(InstructionModels.fromJson(element));
        } catch (e) {
          // print(element);
          spec.add(InstructionModels.fromJson(element));
        }
      }

      return right(spec);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<InstructionModels>>> fetchHealthAdvice() async {
    try {
      var data =
          await apiService.get(endPoint: 'HealthAdvice?pageNum=1&pagesize=1');

      List<InstructionModels> healthAdvice = [];

      for (var element in data['healthAdvice']) {
        try {
          healthAdvice.add(InstructionModels.fromJson(element));
        } catch (e) {
          // print(element);
          healthAdvice.add(InstructionModels.fromJson(element));
        }
      }

      return right(healthAdvice);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
