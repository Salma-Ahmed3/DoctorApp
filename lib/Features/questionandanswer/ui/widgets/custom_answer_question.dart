import 'package:flutter/material.dart';
import 'package:gbsub/Features/add_new_instruction.dart/ui/widgets/custom_button_send.dart';
import 'package:gbsub/Features/questionandanswer/ui/widgets/custom_add_answer.dart';

class AnswerQuestion extends StatelessWidget {
  const AnswerQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
            child: Column(
              children: [
                AddAnswer(),
                SizedBox(height: 20),
                // ButtonSend(
                //   validate: true,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
