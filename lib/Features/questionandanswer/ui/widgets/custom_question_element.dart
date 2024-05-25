import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/profile_page/ui/widgets/custom_profile_view_body_divider.dart';
import 'package:gbsub/Features/questionandanswer/ui/widgets/custom_doctor_answer.dart';
import 'package:gbsub/Features/questionandanswer/ui/widgets/cutom_question_gender.dart';

class CustomQuestionElement extends StatelessWidget {
  const CustomQuestionElement({
    super.key,
    required this.content,
    required this.gender,
    required this.answered,
    required this.id,
  });
  final String content;
  final String gender;
  final bool answered;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: mainColor.withOpacity(0.3)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomQuestionGender(
            gender: gender,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            content,
            style: Styles.styleBold16,
          ),
          SizedBox(
            height: 30.h,
          ),
          const CustomDivider(),
          SizedBox(
            height: 5.h,
          ),
          answered
              ? CustomDoctorAnswer(
                  id: id,
                )
              : Center(
                  child: Text(
                    'لم يتم الأجاية على السؤال بعد',
                    style: Styles.style16.copyWith(
                      color: mainColor,
                    ),
                  ),
                ),
          SizedBox(
            height: 10.h,
          )
        ],
      ),
    );
  }
}
