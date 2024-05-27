import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Features/YourClinicc/logic/reservation_states.dart';
import 'package:gbsub/Features/YourClinicc/repos/reservation_repo.dart';

class ReservationCubit extends Cubit<ReservationStates> {
  ReservationCubit(this.reservationRepo) : super(ReservationInitial());

  final ReservationRepo reservationRepo;

  Future<void> fetchReservation({
    required int doctorId,
    //  required bool state
  }) async {
    emit(ReservationLoading());
    var result = await reservationRepo.fetchReservation(
      doctorId: doctorId,
      // state: state
    );
    result.fold(
      (failure) {
        emit(ReservationFailure(failure.errMessage));
      },
      (reservationModel) {
        emit(ReservationSuccess(reservationModel));
      },
    );
  }

  Future<void> deleteAppointments({
    required int appointmentid,
    //  required bool state
  }) async {
    emit(ReservationLoading());
    var result = await reservationRepo.deleteAppointments(
      appointmentid: appointmentid,
      // state: state
    );
    result.fold(
      (failure) {
        emit(ReservationFailure(failure.errMessage));
      },
      (reservationModel) {
        emit(ReservationSuccess(reservationModel));
      },
    );
  }
}
