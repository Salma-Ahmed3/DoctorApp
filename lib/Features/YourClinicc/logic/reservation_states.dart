import 'package:gbsub/Features/YourClinicc/Models/reservation_models.dart';

abstract class ReservationStates {}

class ReservationInitial extends ReservationStates {}

class ReservationLoading extends ReservationStates {}

class ReservationDelete extends ReservationStates {}

class ReservationSuccess extends ReservationStates {
  final List<ReservationModels> reservation;

  ReservationSuccess(this.reservation);
}

class ReservationFailure extends ReservationStates {
  final String errMessege;

  ReservationFailure(this.errMessege);
}
