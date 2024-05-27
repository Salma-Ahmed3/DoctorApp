import 'package:flutter/material.dart';
import 'package:gbsub/Features/instructions/Ui/Widgets/instruction_new_page.dart';

class InstructionPage extends StatelessWidget {
  const InstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: AddingNewInstructionPage(),
        ),
      ),
    );
  }
}
