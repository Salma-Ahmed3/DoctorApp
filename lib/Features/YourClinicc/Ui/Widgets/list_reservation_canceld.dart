import 'package:flutter/material.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/list_reservation_canceld_item.dart';

class ListReservationCanceld extends StatelessWidget {
  const ListReservationCanceld({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 15,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 20),
          child: ListReservationCanceldItem(),
        );
      },
    );
  }
}
