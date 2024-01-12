import 'package:elvinci_demo/controller/home_screen_controller.dart';
import 'package:elvinci_demo/model/product_model.dart';
import 'package:elvinci_demo/view/custom_widgets/custom_add_to_cart_button.dart';
import 'package:elvinci_demo/view/helper_functions/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {

  ProductModel productModel;
  ProductCard(this.productModel, {super.key});
  HomeScreenController controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: const BoxDecoration(
          color: MyColors.whiteColor,
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 5.0,
                spreadRadius: 1.0,
                offset: Offset(0, 3))
          ]
      ),
      child: Row(
        children: [
          // Image side
          Container(
            width: 160.w,
            color: MyColors.whiteColor,
            child: Image.asset(
              productModel.image,
              fit: BoxFit.cover,
            ),
          ),

          //Information
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    productModel.title,
                    maxLines: 2,
                    style: TextStyle(
                      color: MyColors.blackColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: RatingBarIndicator(
                      rating: productModel.rating,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 10.0,
                      direction: Axis.horizontal,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(
                      "${productModel.price} €",
                      maxLines: 1,
                      style: TextStyle(
                        color: MyColors.blackColor,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h, bottom: 8.h),
                    child: Text(
                      productModel.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: MyColors.textGrayColor,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        controller.addToCart(productModel);
                      },
                        child: addToCartButton(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
