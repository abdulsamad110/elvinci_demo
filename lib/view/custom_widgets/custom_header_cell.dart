import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper_functions/colors.dart';


class HeaderCell extends StatelessWidget {
  String title;
  Color headerColor;
  Color titleColor;
  bool hasBalance;

  HeaderCell(
      {required this.headerColor,
        required this.title,
        required this.titleColor,
        this.hasBalance = true,
        super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 5.h, horizontal: 12.w),
      constraints: BoxConstraints(
        minHeight: 60.h,
        // minWidth: Get.width / 2.5.w,
        // maxWidth: hasBalance ? Get.width - 200.w : Get.width / 2.5.w
      ),
      decoration: BoxDecoration(
          color: headerColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Column(
          children: [
            Text(
              title,
              maxLines: 3,
              style: TextStyle(
                  color: titleColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700),
            ),
            if (hasBalance)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(
                        color: MyColors.textGrayColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            if (!hasBalance)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Total Items",
                    style: TextStyle(
                        color: MyColors.whiteColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}