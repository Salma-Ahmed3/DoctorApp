// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gbsub/Core/utilts/assets.dart';
// import 'package:gbsub/Core/utilts/style.dart';

// class ConductMedicalExamination extends StatelessWidget {
//   const ConductMedicalExamination({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Directionality(
//       textDirection: TextDirection.rtl,
//       child: SizedBox(
//         height: 190.h,
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const CircleAvatar(
//                   radius: 35,
//                   backgroundImage: AssetImage(AssetsData.Patient),
//                 ),
//                 SizedBox(
//                   width: 30.w,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Text('المريض 1', style: Styles.style16),
//                     SizedBox(
//                       height: 10.h,
//                     ),
//                     Opacity(
//                       opacity: 0.8,
//                       child: Text('2024/4/27 |2:00 PM',
//                           style: Styles.style16.copyWith(color: Colors.grey)),
//                     ),
//                     SizedBox(
//                       height: 10.h,
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
