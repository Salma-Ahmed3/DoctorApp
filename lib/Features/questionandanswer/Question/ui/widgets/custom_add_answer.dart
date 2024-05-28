import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbsub/Core/utils/style.dart';

class AddAnswer extends StatelessWidget {
  const AddAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10.0),
        const SizedBox(height: 10.0),
        TextFormField(
          maxLines: 5,
          autofocus: true,
          style: Styles.style16.copyWith(color: Colors.black),
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'هذا الحقل مطلوب';
            } else {
              return null;
            }
          },
          onFieldSubmitted: (value) {
            // of.enterQuestion(value);
          },
          onChanged: (value) {
            // of.enterQuestion(value);
          },
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            hintStyle: Styles.style16.copyWith(color: Colors.grey.shade400),
            hintText: 'أدخل جوابك هنا ...',
            hintTextDirection: TextDirection.rtl,
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(8.w)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(8.w)),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
