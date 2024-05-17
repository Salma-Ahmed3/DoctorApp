import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbsub/Core/utils/assets.dart';
import 'package:gbsub/Core/utils/style.dart';
import 'package:gbsub/Features/profile_page/ui/widgets/custom_profile_view_body_divider.dart';

class PatientRecordListViewItem extends StatelessWidget {
  const PatientRecordListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SizedBox(
          height: 110.h,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(AssetsData.RecordPatient),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('المريض 1', style: Styles.style16),
                      SizedBox(
                        height: 10.h,
                      ),
                      Opacity(
                        opacity: 0.8,
                        child: Text('1234-5678-9012-3456',
                            style: Styles.style16.copyWith(color: Colors.grey)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomDivider(),
            ],
          ),
        ),
      ),
    );
  }
}
