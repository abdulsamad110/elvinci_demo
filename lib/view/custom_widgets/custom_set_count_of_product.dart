import 'package:elvinci_demo/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper_functions/colors.dart';

Widget setCountOfProduct(ProductModel product, Function onTapPlus, Function onTapDelete){
  return Container(
    height: 40.h,
    width: 130.w,
    //padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: MyColors.whiteColor,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: MyColors.blackColor,
        width: 1,
      )
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40.w,
          decoration: const BoxDecoration(
            color: MyColors.backgroundGreyColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
          child: IconButton(
            iconSize: 20.r,
            icon: const Icon(Icons.delete),
            onPressed: () {
              onTapDelete();
            },
          ),
        ),

        Container(
          color: MyColors.whiteColor,
          width: 40.w,
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Center(
            child: Text(
              '${product.count}',
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
        ),

        Container(
          width: 40.w,
          decoration: const BoxDecoration(
            color: MyColors.backgroundGreyColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: IconButton(
            iconSize: 20.r,
            icon: const Icon(Icons.add),
            onPressed: () {
              onTapPlus();
            },
          ),
        ),

      ],
    ),
  );
}