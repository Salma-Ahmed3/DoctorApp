import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Features/YourClinicc/Models/reservation_models.dart';
import 'package:gbsub/Features/YourClinicc/logic/reservation_states.dart';

class ReservationCubit extends Cubit<ReservationStates> {
  ReservationCubit({required this.dio}) : super(ReservationInitial());
  final Dio dio;
  List<ReservationModels> listreservation = [];
  Future<List<ReservationModels>> fetchReservationDone(
      int doctorId, bool state) async {
    try {
      listreservation = [];
      var response = await dio.get(
          // '$baseUrl/AppointmentContoller/GetDoctorAppointments?doctorId=$doctorId&state=$state');
          '$baseUrl/AppointmentContoller/GetUserAppointments?userId=$doctorId&state=$state');
      // '$baseUrl/AppointmentContoller/GetUserDoneAppointments?userId=$doctorId');

      for (var element in response.data) {
        ReservationModels instruction = ReservationModels.json(element);
        listreservation.add(instruction);
        print(listreservation);
      }
      emit(ReservationDelete());
      return listreservation;
    } catch (ex) {
      return [];
    }
  }

  Future<bool> deleteAppointments(int appointmentid) async {
    try {
      var response = await dio
          .delete('$baseUrl/AppointmentContoller?AppontmentId=$appointmentid');
      emit(ReservationDelete());
      return response.data;
    } catch (ex) {
      return false;
    }
  }
}
