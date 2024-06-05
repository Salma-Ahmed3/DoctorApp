import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        "https://th.bing.com/th/id/R.3000b3b378d15af1c8609a9e02b1a936?rik=RmT9xX901tloTg&riu=http%3a%2f%2fwww.clipartbest.com%2fcliparts%2fdT8%2fp6R%2fdT8p6R9ac.png&ehk=ihjZt64cHBmiTWWCuQ%2bq9Eu4%2fOf7TmPKZGbeGn65mNY%3d&risl=&pid=ImgRaw&r=0",
        width: 120.w,
        height: 120.h,
      ),
    );
  }
}
