import 'package:flutter/material.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/instructions/Model/instruction_models.dart';

class DoctorInstructionCard extends StatelessWidget {
  const DoctorInstructionCard({
    super.key,
    required this.instructionModels,
  });

  final HealthAdviceModel instructionModels;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(height: 100),
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage(instructionModels.doctor.doctorPic),
                  // '$imageUrl${instructionModels.doctor.doctorPic}'),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(instructionModels.doctor.doctorName,
                        style: Styles.style16),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(instructionModels.speciality.spec,
                        style: Styles.style15),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(instructionModels.healthAdvice.content,
                style: Styles.styleBold16),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
