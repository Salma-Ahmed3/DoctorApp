import 'package:flutter/material.dart';
import 'package:gbsub/Features/patients_record/Ui/widgets/patient_record_list_page.dart';

class PatientRecordViewBody extends StatelessWidget {
  const PatientRecordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: PatientRecordListView(),
      ),
    );
  }
}
