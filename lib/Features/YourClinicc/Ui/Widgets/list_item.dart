import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/YourClinicc/Models/reservation_models.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_button.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.reservationModels});
  final ReservationModels reservationModels;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(reservationModels.name, style: Styles.style16),
        SizedBox(
          height: 10.h,
        ),
        Opacity(
          opacity: 0.8,
          child: Text(
              '${reservationModels.year}/${reservationModels.month}/${reservationModels.day} |${reservationModels.timeid}',
              style: Styles.style16.copyWith(color: Colors.grey)),
        ),
        SizedBox(
          height: 10.h,
        ),
        const CustomButton(),
      ],
    );
  }
}
