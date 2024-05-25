import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/services/sharedpref.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Features/Login/Ui/login_view.dart';
import 'package:gbsub/Features/profile_page/data/profile_model.dart';
import 'package:gbsub/Features/profile_page/logic/profile_states.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(ProfileInitialState());
  late ProfileModel profileModel;
  final Dio dio = Dio();

  Future<void> getprofiledetails(int id) async {
    try {
      print(Sharedhelper.getintdata(intkey));
      var response = await dio.get('$baseUrl/Doctor?id=$id');
      profileModel = ProfileModel.fromjson(response.data);
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  void logout(context) async {
    await Sharedhelper.putBooldata(boolkey, false);
    await Sharedhelper.deleteInt(intkey);
    emit(Updatekey());
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const LoginView();
        },
      ),
    );
  }
}
