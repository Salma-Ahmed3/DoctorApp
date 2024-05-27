import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Core/utils/Errors/Widgets/custom_error_widget.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/list_reservation_canceld_item.dart';
import 'package:gbsub/Features/YourClinicc/logic/reservation_cubit.dart';
import 'package:gbsub/Features/YourClinicc/logic/reservation_states.dart';

class ListReservationCanceld extends StatelessWidget {
  const ListReservationCanceld({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BlocProvider.of<ReservationCubit>(context)
          .deleteAppointments(appointmentid: 1),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return BlocBuilder<ReservationCubit, ReservationStates>(
          builder: (context, state) {
            if (state is ReservationSuccess) {
              return ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListReservationCanceldItem(
                      reservationModels: state.reservation[index],
                    ),
                  );
                },
              );
            } else if (state is ReservationFailure) {
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
