import 'package:dartz/dartz.dart';
import 'package:gbsub/Core/utils/Errors/failure.dart';
import 'package:gbsub/Features/YourClinicc/Models/reservation_models.dart';

abstract class ReservationRepo {
  Future<Either<Failure, List<ReservationModels>>> fetchReservation({
    required int doctorId,
    // required bool state
  });
  Future<Either<Failure, List<ReservationModels>>> deleteAppointments(
      {required int appointmentid});
}
