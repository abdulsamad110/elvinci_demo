import 'package:elvinci_demo/view/helper_functions/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../helper_functions/colors.dart';

Widget noProductInCartWidget(){
  return Container(
    height: 160.h,
    width: Get.width,
    color: MyColors.whiteColor,
    padding: EdgeInsets.symmetric(horizontal: 40.w),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 160.w,
          color: MyColors.whiteColor,
          child: Image.asset(
            MyAssets.emptyCartImage,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: Text(
            "Your cart is empty",
            maxLines: 2,
            style: TextStyle(
              color: MyColors.blackColor,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: Text(
            "Looks like you have not added anything to your cart. Go ahead & explore",
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: MyColors.textGrayColor,
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    ),
  );
}