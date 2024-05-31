// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gbsub/Core/utils/service_locatro.dart';
// import 'package:gbsub/Features/YourClinicc/Ui/Widgets/list_reservation_done_view_body.dart';
// import 'package:gbsub/Features/YourClinicc/logic/reservation_cubit.dart';
// import 'package:gbsub/Features/YourClinicc/repos/reservation_repo_impl.dart';

// class ListReservationDoneView extends StatelessWidget {
//   const ListReservationDoneView({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => ReservationCubit(
//           // ReservationRepoImpl(apiService: ApiService(Dio())),

//           )
//         ..fetchReservationDone(doctorId: 3),
//       child:  Scaffold(
//         body: ListReservationDoneViewBody(doctorId: 3, reservationModels:   BlocProvider.of<ReservationCubit>(context).listreservation[index]),),
      
//     );
//   }
// }
