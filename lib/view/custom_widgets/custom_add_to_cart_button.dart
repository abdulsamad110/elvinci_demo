import 'package:elvinci_demo/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper_functions/colors.dart';

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