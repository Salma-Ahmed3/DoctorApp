import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gbsub/Features/instructions/Ui/Widgets/add_instruction.dart';
import 'package:gbsub/Features/instructions/Ui/Widgets/button_send.dart';

class AddingNewInstructionPage extends StatelessWidget {
  const AddingNewInstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Align(
        child: Column(
          children: [
            AddInstraction(),
            SizedBox(height: 20),
            ButtonSend(),
          ],
        ),
      ),
    );
  }
}
