import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Features/YourClinicc/Models/reservation_models.dart';
import 'package:gbsub/Features/YourClinicc/logic/booking_state.dart';

class BookingCubit extends Cubit<BookingStates> {
  BookingCubit() : super(BookingInitailState());

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

  Future<void> getTimesForDoctor({
    required int doctorid,
    required String year,
    required String day,
    required String month,
  }) async {
    if (state is BookingTimesLoadingState) {}
    times = [];
    timespicked = [];
    timePicked = false;

    emit(BookingTimesLoadingState());
    var response = await dio.get(
        '$baseUrl/AppointmentContoller?doctorId=$doctorid&year=$year&month=$month&day=$day');

    for (var element in response.data) {
      ReservationModels appointmentDataModel = ReservationModels.json(element);
      times.add(appointmentDataModel);
      timespicked.add(false);
    }

    emit(BookingTimesLoadingSuccessState());
  }
}
