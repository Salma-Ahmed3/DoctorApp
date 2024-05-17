import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/instructions/Logic/instruction_cubit/instruction_cubit.dart';
import 'package:gbsub/Features/instructions/Ui/Widgets/instruction_page.dart';
import 'package:gbsub/Features/instructions/Ui/instructions_view_body.dart';

class InstructionsView extends StatefulWidget {
  const InstructionsView({super.key});

  @override
  State<InstructionsView> createState() => _InstructionsViewState();
}

class _InstructionsViewState extends State<InstructionsView> {
  @override
  void initState() {
    BlocProvider.of<InstructionCubit>(context).fetchNameDoctor();
    super.initState();
    // BlocProvider.of<SpecCubit>(context).fetchSpecDoctor();
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: mainColor,
            iconTheme: const IconThemeData(color: Colors.white),
            title: Text(
              'الإرشادات',
              style: Styles.styleBold24.copyWith(color: Colors.white),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const InstructionPage();
                    }),
                  );
                },
              ),
            ],
          ),
          body: const Scaffold(
            body: InstructionsViewBody(),
          )),
    );
  }
}
