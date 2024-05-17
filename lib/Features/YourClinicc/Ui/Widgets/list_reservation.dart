import 'package:flutter/material.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/List_reservation_item.dart';

class ListReservation extends StatelessWidget {
  const ListReservation({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 15,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 20),
          child: ListReservationItem(),
        );
      },
    );
  }
}
