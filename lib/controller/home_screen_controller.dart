import 'package:elvinci_demo/model/product_model.dart';
import 'package:elvinci_demo/view/cart_screen.dart';
import 'package:elvinci_demo/view/helper_functions/assets.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../view/overview_screen.dart';

class HomeScreenController extends GetxController{

  final currentIndex = 0.obs;
  get currentPage => pages[currentIndex.value];

  List<ProductModel> productsInCart =[];
  double totalPrice = 0;
  double totalCount = 0;

  List<ProductModel> productList = [
    ProductModel(id: 1, image: MyAssets.fridgeImage, title: "Samsung Fridge", price: 358, count: 1, description: "Elevate your kitchen with the Samsung fridge, a perfect blend of style and innovation. Experience advanced cooling technology and spacious design for freshness that lasts", rating: 3.5),
    ProductModel(id: 2, image: MyAssets.microwaveImage, title: "Samsung Microwave", price: 72, count: 1, description: "Elevate your kitchen with the Samsung fridge, a perfect blend of style and innovation. Experience advanced cooling technology and spacious design for freshness that lasts", rating: 4.5),
    ProductModel(id: 3, image: MyAssets.tvImage, title: "Samsung TV", price: 218, count: 1, description: "Efficiency meets innovation with the Samsung dryer machine. Enjoy quick and thorough drying performance coupled with smart features, making laundry a breeze", rating: 4),
    ProductModel(id: 4, image: MyAssets.washingMachineImage, title: "LG Washing Machine", price: 558, count: 1, description: "Elevate your kitchen with the Samsung fridge, a perfect blend of style and innovation. Experience advanced cooling technology and spacious design for freshness that lasts", rating: 2),
    ProductModel(id: 5, image: MyAssets.dryerImage, title: "Samsung Dryer Machine", price: 458, count: 1, description: "Efficiency meets innovation with the Samsung dryer machine. Enjoy quick and thorough drying performance coupled with smart features, making laundry a breeze", rating: 3),
  ];

  List<Widget> pages = [
    const OverviewScreen(),
    const CartScreen(),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }

  void addToCart(ProductModel product){
    bool isProductInCart = false;
    for(ProductModel cartProduct in productsInCart){
      if (cartProduct.id == product.id){
        isProductInCart = true;
        cartProduct.count++;
        totalCount++;
        totalPrice += product.price;
        break;
      }
    }
    if(!isProductInCart){
      productsInCart.add(product);
      totalCount++;
      totalPrice += product.price;
    }
    update();
  }

}