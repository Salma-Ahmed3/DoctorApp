import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_button_item.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_dialog.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CustomButtonItem(
        onPressed: () async {},
        text: 'تاكيد الحجز',
        textcolor: Colors.white,
        buttonColor: mainColor,
      ),
      SizedBox(
        width: 10.w,
      ),
      CustomButtonItem(
        onPressed: () async {
          showDialog(
            context: context,
            builder: (context) {
              return Customdialog();
            },
          );
        },
        text: 'الغاء',
        textcolor: mainColor,
        buttonColor: Colors.white,
      ),
      SizedBox(
        width: 10.w,
      ),
    ]);
  }
}
