import 'package:flutter/material.dart';
import 'package:gbsub/Core/utils/constans.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/patients_record/Ui/patient_record_view_body.dart';

class PatientRecordView extends StatelessWidget {
  const PatientRecordView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: mainColor),
            title: Text(
              'سجل المرضى',
              style: Styles.styleBold24.copyWith(color: mainColor),
            ),
          ),
          body: const PatientRecordViewBody(),
        ),
      ),
    );
  }
}
