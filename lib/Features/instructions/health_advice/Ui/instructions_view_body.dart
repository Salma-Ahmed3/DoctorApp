import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/utils/Errors/Widgets/custom_error_widget.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Features/instructions/health_advice/Logic/instruction_cubit.dart';
import 'package:gbsub/Features/instructions/health_advice/Ui/Widgets/doctor_instruction_card.dart';

class InstructionsViewBody extends StatelessWidget {
  const InstructionsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BlocProvider.of<InstructionCubit>(context)
          .fetchHealthadvice(pageNum: 1, pagesize: 10),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
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
                      const SizedBox(height: 10),
                      DoctorInstructionCard(
                        instructionModels: state.instruction[index],
                      ),
                    ],
                  );
                },
              );
            } else if (state is InstructionFailure) {
              return CustomErrorWidget(errMessage: state.errMessege);
            } else {
              return Center(
                child: CircularProgressIndicator(
                  color: mainColor,
                ),
              );
            }
          },
        );
      },
    );
  }
}
