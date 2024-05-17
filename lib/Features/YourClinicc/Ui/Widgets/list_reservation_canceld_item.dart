import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbsub/Core/utils/assets.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/list_item_canceld.dart';
import 'package:gbsub/Features/profile_page/ui/widgets/custom_profile_view_body_divider.dart';

class ListReservationCanceldItem extends StatelessWidget {
  const ListReservationCanceldItem({super.key});

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
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(AssetsData.Patient),
                ),
                SizedBox(
                  width: 30.w,
                ),
                const ListItemCanceld(),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const CustomDivider(),
          ],
        ),
      ),
    );
  }
}
