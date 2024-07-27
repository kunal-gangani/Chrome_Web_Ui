import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget RowText({
  required IconData icon,
  required String text,
}) {
  return Row(
    children: [
      Icon(
        icon,
        color: Colors.blue,
      ),
      SizedBox(
        width: 10.w,
      ),
      Text(
        text,
      ),
    ],
  );
}
