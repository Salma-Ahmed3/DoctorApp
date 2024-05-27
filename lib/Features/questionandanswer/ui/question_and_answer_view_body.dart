import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/cubits/bottomnavigationbarcubit/Bottomnavigationbarcubit.dart';
import 'package:gbsub/Core/cubits/bottomnavigationbarcubit/Bottomnavigationvarstates.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/questionandanswer/ui/widgets/custom_custom_question_item_list_view.dart';

class QuestionAndAnswerViewBody extends StatelessWidget {
  const QuestionAndAnswerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var of = BlocProvider.of<NavagationbarCubit>(context);
    return FutureBuilder(
      future: of.getAllQuetions(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return SafeArea(
          child: SingleChildScrollView(
            child: BlocBuilder<NavagationbarCubit, BottomNavigationBarStates>(
              builder: (context, state) {
                return Column(
                  children: [
                    state is FetchingQuestionLoading
                        ? Center(
                            child: CircularProgressIndicator(
                              color: mainColor,
                            ),
                          )
                        : state is FetchingQuestionSucsess &&
                                of.questions.isNotEmpty
                            ? CustomListViewQuestionElement(of: of)
                            : Center(
                                child: Text(
                                  "تأكد من الأتصال بالأنترنت",
                                  style:
                                      Styles.style16.copyWith(color: mainColor),
                                ),
                              ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
