import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/services/api_services.dart';
import 'package:gbsub/Features/add_new_instruction.dart/logic/add_instruction_cubit.dart';
import 'package:gbsub/Features/add_new_instruction.dart/ui/instruction_new_page.dart';
import 'package:gbsub/Features/instructions/repos/instruction_repo_impl.dart';
// import 'package:gbsub/Features/instructions/Ui/Widgets/instruction_new_page.dart';

class InstructionPage extends StatelessWidget {
  const InstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: BlocProvider(
          create: (BuildContext context) => AddInstructionCubit(
              (InstructionRepoImpl(apiService: ApiService(Dio())))),
          child: const Scaffold(
            body: AddingNewInstructionPage(),
          ),
        ),
      ),
    );
  }
}
