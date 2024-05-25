// ignore_for_file: unused_catch_clause

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/cubits/bottomnavigationbarcubit/Bottomnavigationvarstates.dart';
import 'package:gbsub/Core/services/sharedpref.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Features/Home/Ui/home_body_view.dart';
import 'package:gbsub/Features/profile_page/ui/profile_view.dart';
import 'package:gbsub/Features/questionandanswer/data/question.dart';
import 'package:gbsub/Features/questionandanswer/ui/question_and_answer_view_body.dart';

class NavagationbarCubit extends Cubit<BottomNavigationBarStates> {
  NavagationbarCubit() : super(InitialState());
  int currentIndex = 0;
  bool loggedin = false;
  List<Widget> bottomnavigationbarviews = [
    const HomeViewBody(),
    const HomeViewBody(),
    const QuestionAndAnswerViewBody(),
    const ProfileView()

    // const NfcViewbody(),
    // const QuestionsAnswersbdoyview(),
    // const ReportsBodyview(),
    // const ProfileViewBody(),
  ];
  void tapped(int index) {
    currentIndex = index;
    emit(TappedState());
  }

  void LoggedInfun({bool? state}) {
    if (state != null) {
      loggedin = state;

      emit(LoggedIn());
    } else {
      loggedin = !loggedin;
      Sharedhelper.putBooldata('loggedIN', loggedin)
          .then((value) => emit(LoggedIn()));
    }
  }

  // Question and Answer cubit part

  late String question;
  List<QuestionDetails> questions = [];
  bool publicquestions = true;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formkey = GlobalKey();

  void enterQuestion(String value) {
    question = value;
    emit(QuestionEntered());
  }

  void publicquestionTapped() {
    if (publicquestions) {
    } else {
      publicquestions = true;
      emit(PublicQuestionTapped());
    }
  }

  void myquestionTapped() {
    if (!publicquestions) {
    } else {
      publicquestions = false;
      emit(Myquestionstapped());
    }
  }

  Future<bool> postQUestion(int userId) async {
    final dio = Dio();
    publicquestions = true;
    try {
      emit(FetchingQuestionLoading());
      dio.post('$baseUrl/Question?content=$question&User=$userId');
      emit(FetchingQuestionSucsess());
      return true;
    } catch (erorr) {
      emit(FetchingQuestionFailing());
      return false;
    }
  }

  Future<List<QuestionDetails>> getAllQuetions() async {
    final dio = Dio();
    questions = [];
    try {
      emit(FetchingQuestionLoading());
      var response = await dio.get('$baseUrl/Question?pagesize=10&pageNum=1');

      for (int i = 0; i < response.data['question'].length; i++) {
        QuestionDetails questionDetails = QuestionDetails.json(
            response.data['question'][i], response.data['user'][i]);

        questions.add(questionDetails);
      }
      emit(FetchingQuestionSucsess());
      return questions;
    } on Exception catch (e) {
      emit(FetchingQuestionFailing());
      return [];
    }
  }

  Future<List<QuestionDetails>> getMyQuetions() async {
    final dio = Dio();
    questions = [];
    try {
      emit(FetchingQuestionLoading());
      var response = await dio.get(
          '$baseUrl/Question/userQuestions?id=${Sharedhelper.getintdata(intkey)}&pagesize=10&pageNum=1');

      for (int i = 0; i < response.data['question'].length; i++) {
        QuestionDetails questionDetails = QuestionDetails.json(
            response.data['question'][i], response.data['user'][i]);

        questions.add(questionDetails);
      }
      emit(FetchingQuestionSucsess());
      return questions;
    } on Exception catch (e) {
      emit(FetchingQuestionFailing());
      return [];
    }
  }
}
