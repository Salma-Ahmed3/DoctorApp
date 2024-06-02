import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gbsub/Core/utils/constans.dart';

class CutomReservationItemImage extends StatelessWidget {
  const CutomReservationItemImage({
    super.key,
    required this.pic,
  });
  final String pic;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.w),
      child: Image.network(
        // '$imageUrl$pic',
        'https://png.pngtree.com/png-clipart/20221006/original/pngtree-chibi-doctor-kids-cute-boy-png-image_8661664.png',
        width: 120.w,
        height: 120.h,
      ),
    );
  }
}
