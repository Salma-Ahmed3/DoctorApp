import 'package:flutter/material.dart';
import 'package:gbsub/Core/utils/style.dart';

class NameOfDoctor extends StatelessWidget {
  const NameOfDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('مجدي يعقوب', style: Styles.styleBold16),
        const SizedBox(
          height: 10,
        ),
        Text('جراح قلب', style: Styles.style16),
      ],
    );
  }
}
