import 'package:flutter/material.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Core/utils/style.dart';

class AddInstraction extends StatelessWidget {
  const AddInstraction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'إضافة إرشاداتك:',
            style: Styles.style16,
          ),
        ),
        const SizedBox(height: 10.0),
        TextField(
          cursorColor: mainColor,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: mainColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: mainColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: mainColor),
            ),
            fillColor: Colors.grey[200],
            filled: true,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
