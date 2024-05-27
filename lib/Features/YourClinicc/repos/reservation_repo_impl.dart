// ignore_for_file: unused_local_variable

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gbsub/Core/services/api_services.dart';
import 'package:gbsub/Core/utils/Errors/failure.dart';
import 'package:gbsub/Features/YourClinicc/Models/reservation_models.dart';
import 'package:gbsub/Features/YourClinicc/logic/reservation_states.dart';
import 'package:gbsub/Features/YourClinicc/repos/reservation_repo.dart';

class ReservationRepoImpl implements ReservationRepo {
  final ApiService apiService;

  ReservationRepoImpl({required this.apiService});
  List<ReservationModels> listOfAppointment = [];

  @override
  Future<Either<Failure, List<ReservationModels>>> fetchReservation({
    required int doctorId,
    //  required bool state
  }) async {
    try {
      listOfAppointment = [];
      var response = await apiService.get(
          endPoint:
              '/AppointmentContoller/GetDoctorAppointments?doctorId=$doctorId&state=${true}');
      for (var element in response.data) {
        final appointment = ReservationModels.json(element);
        listOfAppointment.add(appointment);
      }
      return right(listOfAppointment);
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
  Future<Either<Failure, List<ReservationModels>>> deleteAppointments(
      {required int appointmentid}) async {
    try {
      listOfAppointment = [];
      var response = await apiService.get(
          endPoint: '/AppointmentContoller?AppontmentId=$appointmentid');
      return right(ReservationDelete() as List<ReservationModels>);
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

// class ReservationRepoImpl implements ReservationRepo {
//   final Dio dio;
//   final ApiService apiService;

//   final List<ReservationModels> listOfAppointment = [];

//   ReservationRepoImpl(this.dio, this.apiService);
//   @override
//   Future<Either<Failure, List<ReservationModels>>> fetchReservation({
//     required int doctorId,
//     //  required bool state
//   }) async {
//     try {
//       var response = await dio.get(
//           // '$baseUrl/AppointmentContoller/AppointmentContoller/GetDoctorAppointments?doctorId=$doctorId&state=$state');
//           '$baseUrl/AppointmentContoller/AppointmentContoller/GetDoctorAppointments?doctorId=$doctorId&state=${true}');
//       for (var element in response.data) {
//         ReservationModels appointment = ReservationModels.fromJson(element);
//         listOfAppointment.add(appointment);
//       }
//       return right(listOfAppointment);
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
//   Future<Either<Failure, List<ReservationModels>>> deleteAppointments(
//       {required int appointmentid}) async {
//     try {
//       await dio
//           .delete('$baseUrl/AppointmentContoller?AppontmentId=$appointmentid');
//       return right(ReservationDelete() as List<ReservationModels>);
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

