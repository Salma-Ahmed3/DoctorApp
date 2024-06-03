import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Features/YourClinicc/Models/reservation_models.dart';
import 'package:gbsub/Features/YourClinicc/logic/reservation_states.dart';

class ReservationCubit extends Cubit<ReservationStates> {
  List<ReservationModels> times = [];
  List<bool> timespicked = [];
  final Dio dio = Dio();
  bool timePicked = false;
  late String appointmentTime;
  late int doctorid;
  late int timeid;
  late DateTime dateTime;
  String month = DateTime.now().month.toString();
  String year = DateTime.now().year.toString();
  String day = DateTime.now().day.toString();

  ReservationCubit() : super(ReservationInitial());
  // final Dio dio;
  List<ReservationModels> listreservation = [];
  Future<List<ReservationModels>> fetchReservationDone(
      int doctorid, bool state) async {
    try {
      listreservation = [];
      var response = await dio.get(
          '$baseUrl/AppointmentContoller/GetDoctorAppointments?doctorId=$doctorid&state=$state');

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

  Future<void> getTimesForDoctor({
    required int doctorid,
    required String year,
    required String day,
    required String month,
  }) async {
    if (state is ReservationTimesLoadingState) {}
    times = [];
    timespicked = [];
    timePicked = false;

    emit(ReservationTimesLoadingState());
    var response = await dio.get(
        '$baseUrl/AppointmentContoller?doctorId=$doctorid&year=$year&month=$month&day=$day');

    for (var element in response.data) {
      ReservationModels appointmentDataModel = ReservationModels.json(element);
      times.add(appointmentDataModel);
      timespicked.add(false);
    }

    emit(ReservationTimesLoadingSuccessState());
  }
}
