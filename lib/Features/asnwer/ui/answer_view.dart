import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Features/asnwer/logic/answer_cubit.dart';
import 'package:gbsub/Features/asnwer/ui/CustomAppbar.dart';
import 'package:gbsub/Features/asnwer/ui/answer_view_body.dart';

class AnswerView extends StatelessWidget {
  const AnswerView({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnswerCubit(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: const CustomAppbar(title: 'الأجابة'),
          body: AnswerViewBody(
            id: id,
          ),
        ),
      ),
    );
  }
}
