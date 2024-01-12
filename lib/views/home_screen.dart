import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/home_screen_controller.dart';
import 'constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: homeScreenController.currentIndex.value,
        children: homeScreenController.pages,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3,
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 20,
          currentIndex: homeScreenController.currentIndex.value,
          onTap: homeScreenController.changePage,
          selectedItemColor: MyColors.darkBlueColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
          unselectedLabelStyle: const TextStyle(color: Colors.white),
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 14.sp,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.home, size: 30.r,),
              label: homeScreenController.currentIndex.value == 0
                  ? "Overview"
                  : "",
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.shopping_cart, size: 30.r,),
                label: homeScreenController.currentIndex.value == 1
                    ? "Cart"
                    : ""),
          ],
        ),
      ),
    ),
    );
  }
}
