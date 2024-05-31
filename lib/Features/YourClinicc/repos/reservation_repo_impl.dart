// // ignore_for_file: avoid_print

// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:gbsub/Core/services/api_services.dart';
// import 'package:gbsub/Core/utils/Errors/failure.dart';
// import 'package:gbsub/Features/YourClinicc/Models/reservation_models.dart';
// import 'package:gbsub/Features/YourClinicc/repos/reservation_repo.dart';

// class ReservationRepoImpl implements ReservationRepo {
//   final ApiService apiService;

//   ReservationRepoImpl({required this.apiService});
//   List<ReservationModels> listreservation = [];
//   @override
//   Future<Either<Failure, List<ReservationModels>>> fetchReservationDone(
//       {required int doctorId}) async {
//     try {
//       listreservation = [];
//       var data = await apiService.get(
//           endPoint:
//               '/AppointmentContoller/GetDoctorAppointments?doctorId=$doctorId');
//       for (var element in data['appointmentTime']) {
//         // ReservationModels reservationModel = ReservationModels.json(element);
//         listreservation.add(ReservationModels.json(element));
//         print(listreservation);
//       }
//       return right(listreservation);
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
