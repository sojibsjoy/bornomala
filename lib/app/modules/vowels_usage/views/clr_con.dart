import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClrCon extends StatelessWidget {
  final String letter;
  Color? bgClr;
  ClrCon({
    super.key,
    required this.letter,
    this.bgClr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: bgClr ?? Colors.amber.shade100,
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: AutoSizeText(
        letter,
        style: TextStyle(
          fontSize: 60.sp,
        ),
      ),
    );
  }
}
