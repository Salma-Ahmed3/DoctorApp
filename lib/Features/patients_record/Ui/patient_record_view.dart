import 'package:flutter/material.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/patients_record/Ui/patient_record_view_body.dart';

class PatientRecordView extends StatelessWidget {
  const PatientRecordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: mainColor,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            'سجل المرضى',
            style: Styles.styleBold24.copyWith(color: Colors.white),
          ),
        ),
        body: const PatientRecordViewBody(),
      ),
    );
  }
}
