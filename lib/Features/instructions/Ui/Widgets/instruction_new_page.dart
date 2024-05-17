import 'package:flutter/material.dart';
import 'package:gbsub/Core/utils/assets.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/instructions/Ui/Widgets/add_instruction.dart';
import 'package:gbsub/Features/instructions/Ui/Widgets/button_send.dart';
import 'package:gbsub/Features/instructions/Ui/Widgets/name_doctor.dart';

class AddingNewInstructionPage extends StatelessWidget {
  const AddingNewInstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('إرشادات من الدكتور',
                style: Styles.style16.copyWith(fontSize: 20)),
            const SizedBox(height: 15),
            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(AssetsData.DoctorHurt),
                ),
                SizedBox(width: 15),
                NameOfDoctor(),
              ],
            ),
            const SizedBox(height: 15),
            const AddInstraction(),
            const ButtonSend()
          ],
        ),
      ),
    );
  }
}
