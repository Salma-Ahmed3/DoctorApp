import 'package:flutter/material.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/instructions/Ui/Widgets/instruction_new_page.dart';

class InstructionPage extends StatelessWidget {
  const InstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: mainColor),
            title: Text(
              'لإضافة إرشادات جديدة',
              style: Styles.styleBold24.copyWith(color: mainColor),
            ),
          ),
          body: const AddingNewInstructionPage(),
        ),
      ),
    );
  }
}
