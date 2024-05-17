import 'package:flutter/material.dart';
import 'package:gbsub/Features/patients_record/Ui/widgets/patient_record_list_view_item.dart';

class PatientRecordListView extends StatelessWidget {
  const PatientRecordListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 15,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 20),
            child: PatientRecordListViewItem(),
          );
        });
  }
}
