import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/utils/Errors/Widgets/custom_error_widget.dart';
import 'package:gbsub/Features/instructions/Logic/instruction_cubit/instruction_cubit.dart';
import 'package:gbsub/Features/instructions/Ui/Widgets/doctor_instruction_card.dart';

class InstructionsViewBody extends StatelessWidget {
  const InstructionsViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InstructionCubit, InstructionState>(
      builder: (context, state) {
        if (state is InstructionSuccess) {
          return ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.instruction.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DoctorInstructionCard(
                    imageUrl: state.instruction[index].doctor.profilePic ?? '',
                    instructionModels: state.instruction[index],
                  ),
                  // state.instruction[index].doctor.profilePic? ?? ''),
                ],
              );
            },
          );
        } else if (state is InstructionFailure) {
          return CustomErrorWidget(errMessage: state.errMessege);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
