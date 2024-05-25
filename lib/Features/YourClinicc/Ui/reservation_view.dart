import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/services/api_services.dart';
import 'package:gbsub/Features/YourClinicc/Ui/reservation_view_body.dart';
import 'package:gbsub/Features/YourClinicc/logic/reservation_cubit.dart';
import 'package:gbsub/Features/YourClinicc/repos/reservation_repo_impl.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReservationCubit(
        ReservationRepoImpl(apiService: ApiService(Dio())),
      ),
      child: const SafeArea(
        child: Scaffold(
          body: ReservationViewBody(),
        ),
      ),
    );
  }
}
