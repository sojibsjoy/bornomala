import 'package:bornomala/app/widgets/helper_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:getwidget/getwidget.dart';

class HomeCard extends StatelessWidget {
  final String imgPath;
  final String title;
  final String des;
  final VoidCallback onTapFn;
  double? customH;
  HomeCard({
    super.key,
    required this.imgPath,
    required this.title,
    required this.des,
    required this.onTapFn,
    this.customH,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFn,
      child: Container(
        height: customH ?? 350.h,
        margin: EdgeInsets.all(30.h),
        padding: EdgeInsets.all(50.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF80BFED),
              Color(0xFF7DA1F4),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GFAvatar(
              radius: 100.r,
              backgroundImage: AssetImage(
                imgPath,
              ),
            ),
            addW(30.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 50.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  des,
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.white,
                  ),
                  Text(
                    "10",
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
