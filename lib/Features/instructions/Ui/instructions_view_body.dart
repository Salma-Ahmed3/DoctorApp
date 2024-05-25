import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/utils/Errors/Widgets/custom_error_widget.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Features/instructions/Logic/cubit_instruction/instruction_cubit.dart';
import 'package:gbsub/Features/instructions/Ui/Widgets/doctor_instruction_card.dart';

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
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gbsub/Core/utils/Errors/Widgets/custom_error_widget.dart';
// import 'package:gbsub/Features/instructions/Logic/Spec_cubit/spec_cubit.dart';
// import 'package:gbsub/Features/instructions/Logic/instruction_cubit/instruction_cubit.dart';
// import 'package:gbsub/Features/instructions/Ui/Widgets/doctor_instruction_card.dart';

// class InstructionsViewBody extends StatelessWidget {
//   const InstructionsViewBody({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<InstructionCubit, InstructionState>(
//         builder: (context, state) {
//       if (state is InstructionSuccess) {
//         return ListView.builder(
//           physics: const AlwaysScrollableScrollPhysics(),
//           padding: EdgeInsets.zero,
//           itemCount: state.instruction.length,
//           itemBuilder: (context, index) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 DoctorInstructionCard(
//                   imageUrl: state.instruction[index].doctor.profilePic ?? '',
//                   instructionModels: state.instruction[index],
//                   spec: state.instruction[index].spec,
//                 ),
//                 // state.instruction[index].doctor.profilePic? ?? ''),
//               ],
//             );
//           },
//         );
//       } else if (state is InstructionFailure) {
//         return CustomErrorWidget(errMessage: state.errMessege);
//       } else if (state is InstructionLoading) {
//         return const Center(
//           child: CircularProgressIndicator(),
//         );
//       }
//       return BlocBuilder<SpecCubit, SpecState>(builder: (context, state) {
//         if (state is SpecSuccess) {
//           return ListView.builder(
//             physics: const AlwaysScrollableScrollPhysics(),
//             padding: EdgeInsets.zero,
//             itemCount: state.instruction.length,
//             itemBuilder: (context, index) {
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   DoctorInstructionCard(
//                     imageUrl: state.instruction[index].doctor.profilePic ?? '',
//                     instructionModels: state.instruction[index],
//                     spec: state.instruction[index].spec,
//                   ),
//                   // state.instruction[index].doctor.profilePic? ?? ''),
//                 ],
//               );
//             },
//           );
//         } else if (state is SpecFailuer) {
//           return CustomErrorWidget(errMessage: state.errMessege);
//         } else {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//       });
//     });
//   }
// }
