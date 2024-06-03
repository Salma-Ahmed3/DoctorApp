import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Features/YourClinicc/Models/reservation_models.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_reservation_button.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_dialog.dart';
import 'package:gbsub/Features/YourClinicc/logic/reservation_cubit.dart';

class CustomReservationItemButtonsRow extends StatelessWidget {
  const CustomReservationItemButtonsRow({
    super.key,
    required this.reservationModels,
  });
  final ReservationModels reservationModels;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomReservationButton(
          onPressed: () async {},
          text: 'ملخص الجلسه',
          textcolor: Colors.white,
          buttonColor: mainColor,
        ),
        BlocProvider(
          create: (context) => ReservationCubit(
              // dio: Dio(),
              ),
          child: CustomReservationButton(
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
}
