import 'package:flutter/material.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/custom_tab.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/list_reservation.dart';
import 'package:gbsub/Features/YourClinicc/Ui/Widgets/list_reservation_canceld.dart';

class ReservationViewBody extends StatelessWidget {
  const ReservationViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: mainColor,
            centerTitle: true,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.white),
            title: Text(
              "عيادتك",
              style: Styles.styleBold24.copyWith(color: Colors.white),
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
    );
    // );
  }
}
