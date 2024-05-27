import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/services/sharedpref.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Features/instructions/Logic/cubit_new_instruction/new_instruction_cubit.dart';

class ButtonSend extends StatelessWidget {
  const ButtonSend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: mainColor),
        onPressed: () async {
          Navigator.pop(context);
          await BlocProvider.of<NewInstructionCubit>(context)
              .addNewHealthAdvice(
            doctorId: Sharedhelper.getintdata(intkey),
            content: BlocProvider.of<NewInstructionCubit>(context).content,
          );
          // if (state is NewInstructionSuccess) {
          //   print('Added');
          // } else if(state is NewInstructionFailure) {
          //   print('failed');
          // }
        },
        child: const Text(
          "نشر",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
    ]);
  }
}
