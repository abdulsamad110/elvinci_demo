import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';


Widget addToCartButton(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
    decoration: BoxDecoration(
        color: MyColors.darkBlueColor,
        borderRadius: BorderRadius.circular(5),
    ),
    child: Text(
      "Add to Cart",
      style: TextStyle(
          fontSize: 14.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600),
    ),
  );
}