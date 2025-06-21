import 'package:flutter/material.dart';
import 'package:zyntra_seller_application/const/const.dart';
import 'package:zyntra_seller_application/const/strings.dart';
import 'package:get/get.dart';
import 'package:zyntra_seller_application/controller/HomeController.dart';
import 'package:zyntra_seller_application/screen/dashboard/dashboard_screen.dart';
import 'package:zyntra_seller_application/screen/orders/orders_screen.dart';
import 'package:zyntra_seller_application/screen/products/products_screen.dart';
import 'package:zyntra_seller_application/screen/settings/settings_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(Homecontroller());
    var bottomNav = [
      DashboardScreen(),
      ProductsScreen(),
      OrdersScreen(),
      SettingsScreen(),
    ];

    var bottmNavbarItems = [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: dashboard),
      BottomNavigationBarItem(
        icon: Icon(Icons.dashboard_outlined),
        label: products,
      ),
      BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: orders),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: settings),
    ];

    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (currentIndex) {
            controller.currentIndex.value = currentIndex;
          },
          backgroundColor: white,
          selectedItemColor: Colors.black,
          unselectedItemColor: appColor,
          currentIndex: controller.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          items: bottmNavbarItems,
        ),

        body: Column(
          children: [
            Expanded(child: bottomNav.elementAt(controller.currentIndex.value)),
          ],
        ),
      ),
    );
  }
}
