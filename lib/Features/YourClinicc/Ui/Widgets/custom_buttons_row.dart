// ignore_for_file: unused_local_variable

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/cubits/bottomnavigationbarcubit/MainCubi.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Core/utils/widgets/custom_snack_bar.dart';
import 'package:gbsub/Features/YourClinicc/Models/reservation_models.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_booking_item_button.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_dialog.dart';
import 'package:gbsub/Features/YourClinicc/logic/reservation_cubit.dart';

class CustomBookingItemButtonsRow extends StatelessWidget {
  const CustomBookingItemButtonsRow({
    super.key,
    required this.reservationModels,
  });
  final ReservationModels reservationModels;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomBookingButton(
          onPressed: () async {
            var of = BlocProvider.of<MainCubit>(context);
            if ((DateTime.now().month >
                int.parse(reservationModels.month))) //old month
            {
              customSnackBar(context, 'لا يمكن تعديل هذا الميعاد ');
            } else if (DateTime.now().month ==
                    int.parse(reservationModels.month) &&
                int.parse(reservationModels.day) - DateTime.now().day <
                    0) // same month old day
            {
              customSnackBar(context, 'لا يمكن تعديل هذا الميعاد ');
            } else if (DateTime.now().month ==
                    int.parse(reservationModels.month) &&
                int.parse(reservationModels.day) - DateTime.now().day ==
                    0) //same month same day
            {
              String hour = reservationModels.appointmentTime.substring(0, 2);
              if (int.parse(hour) - DateTime.now().hour <=
                  1) //check hour fo one hour diff
              {
                customSnackBar(
                    context, 'لا يمكن تعديل هذا الميعاد نظرا لضيق الوقت');
              } else // more than one hour diff
              {
                // await updateFunction(of, context);
              }
            } else {
              // await updateFunction(of, context);
            }
          },
          text: 'تأكيد الحجز',
          textcolor: Colors.white,
          buttonColor: mainColor,
        ),
        BlocProvider(
          create: (context) => ReservationCubit(dio: Dio()),
          child: CustomBookingButton(
            onPressed: () async {
              showDialog(
                context: context,
                builder: (context) {
                  return Customdialog(reservationModels: reservationModels);
                },
              );
            },
            text: 'الغاء',
            textcolor: mainColor,
            buttonColor: Colors.white,
          ),
        ),
      ],
    );
  }

  // Future<void> updateFunction(MainCubit of, BuildContext context) async {
  //   of.dateTime = DateTime(int.parse(reservationModels.year),
  //       int.parse(reservationModels.month), int.parse(reservationModels.day));

  //   await of.getTimesForDoctor(
  //       doctorid: reservationModels.doctorid,
  //       year: reservationModels.year,
  //       day: reservationModels.day,
  //       month: reservationModels.month);

  // Navigator.push(
  // context,
  // MaterialPageRoute(
  //   builder: (context) => BookingUpdateView(
  //     appDataModel: appointment,
  //   ),
  // ),
  // );
  // }
}
