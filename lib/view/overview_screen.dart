import 'package:elvinci_demo/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'custom_widgets/custom_product_card.dart';
import 'helper_functions/colors.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder: (homeScreenController) {
        return Scaffold(
          backgroundColor: MyColors.whiteColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text(
              "Items Available",
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w700,
                color: MyColors.blackColor,
              ),
            ),
            backgroundColor: MyColors.whiteColor,
          ),
          body: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            itemCount: homeScreenController.productList.length,
            itemBuilder: (context, index) {
              return ProductCard(homeScreenController.productList[index], false);
            },
          ),
        );
      }
    );
  }
}
