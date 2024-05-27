import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Features/YourClinicc/Models/reservation_models.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/list_item.dart';
import 'package:gbsub/Features/profile_page/ui/widgets/custom_profile_view_body_divider.dart';

class ListReservationItem extends StatelessWidget {
  const ListReservationItem({
    super.key,
    required this.reservationModels,
  });
  final ReservationModels reservationModels;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage('$imageUrl${reservationModels.pic}'),
                ),
                SizedBox(
                  width: 30.w,
                ),
                ListItem(
                  reservationModels: reservationModels,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomDivider(),
          ],
        ),
      ),
    );
  }
}
