import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbsub/Features/YourClinicc/Models/reservation_models.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_booking_item_doctor_info.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_buttons_row.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_divider.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_doctor_image.dart';

class CustomBookingHistoryItem extends StatelessWidget {
  const CustomBookingHistoryItem({
    super.key,
    required this.reservationModels,
  });
  final ReservationModels reservationModels;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CutomBookingItemImage(
                pic: reservationModels.pic,
              ),
              CustomBookingItemDoctorInformations(
                  name: reservationModels.name,
                  month: reservationModels.month,
                  day: reservationModels.day,
                  year: reservationModels.year,
                  appointmentTime: reservationModels.appointmentTime),
              // This Is Messege Whith Doctor
              // const CustomConatctMessageIcon()
            ],
          ),
          const CustomBookingHistoryDivider(),
          SizedBox(
            height: 5.h,
          ),
          CustomBookingItemButtonsRow(
            reservationModels: reservationModels,
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
