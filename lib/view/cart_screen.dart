import 'package:elvinci_demo/view/custom_widgets/custom_product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controller/home_screen_controller.dart';
import 'custom_widgets/custom_header_cell.dart';
import 'custom_widgets/custom_no_product_in_cart_widget.dart';
import 'helper_functions/colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        builder: (homeController) {
          return Scaffold(
            backgroundColor: MyColors.whiteColor,
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: Text(
                "Shopping Cart",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: MyColors.blackColor,
                ),
              ),
              backgroundColor: MyColors.whiteColor,
            ),
            body: SizedBox(
              height: Get.height,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: Get.width,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: HeaderCell(
                                          title: "${homeController.totalPrice.toStringAsFixed(2)} €",
                                          headerColor: MyColors.lightGreyColor,
                                          titleColor: MyColors.blackColor,
                                          hasBalance: true,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 21.w,
                                      ),
                                      Expanded(
                                        child: HeaderCell(
                                          title: homeController.totalCount.toStringAsFixed(0),
                                          headerColor: MyColors.darkBlueColor,
                                          titleColor: Colors.white,
                                          hasBalance: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if(homeController.productsInCart.isNotEmpty)
                            Expanded(
                              child: ListView.builder(
                                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                                itemCount: homeController.productsInCart.length,
                                itemBuilder: (context, index) {
                                  return ProductCard(homeController.productsInCart[index], true);
                                },
                              ),
                            ),
                          if(homeController.productsInCart.isEmpty)
                            Expanded(
                              child: noProductInCartWidget(),
                            ),
                        ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
