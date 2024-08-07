import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget IconWidgets({required String image, required String text}) {
  return Column(
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage(
          image,
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.white,
        ),
      ),
    ],
  );
}
