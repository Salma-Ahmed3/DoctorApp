import 'package:flutter/material.dart';
import 'package:gbsub/Core/utils/constans.dart';

class ButtonSend extends StatelessWidget {
  const ButtonSend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: mainColor),
        onPressed: () {},
        child: const Text(
          "نشر",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
    ]);
  }
}
