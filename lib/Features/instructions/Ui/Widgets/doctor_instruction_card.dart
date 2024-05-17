import 'package:flutter/material.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/instructions/Model/instruction.dart';

class DoctorInstructionCard extends StatelessWidget {
  const DoctorInstructionCard({
    super.key,
    required this.imageUrl,
    required this.instructionModels,
  });
  final String imageUrl;
  final InstructionModels instructionModels;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('إرشادات من الدكتور',
                style: Styles.style16.copyWith(fontSize: 20)),
            const SizedBox(height: 15),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(imageUrl),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(instructionModels.doctor.name ?? '',
                        style: Styles.styleBold16),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(instructionModels.spec.name.toString(),
                        style: Styles.style16),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'إرشادات:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(instructionModels.healthAdvice.content ?? '',
                  style: Styles.style16),
            ),
          ],
        ),
      ),
    );
  }
}
