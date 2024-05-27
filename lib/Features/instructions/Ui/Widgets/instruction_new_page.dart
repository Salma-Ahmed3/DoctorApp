import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/services/api_services.dart';
import 'package:gbsub/Features/instructions/Logic/cubit_new_instruction/new_instruction_cubit.dart';
import 'package:gbsub/Features/instructions/Ui/Widgets/add_instruction.dart';
import 'package:gbsub/Features/instructions/Ui/Widgets/custom_button_send.dart';
import 'package:gbsub/Features/instructions/repos/instruction_repo_impl.dart';

class AddingNewInstructionPage extends StatelessWidget {
  const AddingNewInstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NewInstructionCubit(
              InstructionRepoImpl(apiService: ApiService(Dio())),
            ),
        child: const Padding(
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
        ));
  }
}
