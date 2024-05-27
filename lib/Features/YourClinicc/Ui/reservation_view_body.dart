import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/services/api_services.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_tab.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/list_reservation_body.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/list_reservation_body_canceld.dart';
import 'package:gbsub/Features/YourClinicc/logic/reservation_cubit.dart';
import 'package:gbsub/Features/YourClinicc/repos/reservation_repo_impl.dart';

class ReservationViewBody extends StatelessWidget {
  const ReservationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReservationCubit(
        ReservationRepoImpl(apiService: ApiService(Dio())),
      ),
      child: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                elevation: 0,
                iconTheme: IconThemeData(color: mainColor),
                title: Text(
                  "عيادتك",
                  style: Styles.styleBold24.copyWith(color: mainColor),
                ),
                bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: mainColor,
                  indicatorColor: mainColor,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    CustomBookingViewTap(
                      text: 'الحجوزات القادمة',
                    ),
                    CustomBookingViewTap(
                      text: 'الحجوزات الملغية',
                    ),
                  ],
                ),
              ),
              body: const TabBarView(
                children: [ListReservation(), ListReservationCanceld()],
              ),
            ),
          ),
        ),
      ),
    );
    // );
  }
}
