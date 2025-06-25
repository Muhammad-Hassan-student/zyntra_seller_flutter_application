import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zyntra_seller_application/const/colors.dart';
import 'package:zyntra_seller_application/widgets/FormWidget.dart';

class StoreSettings extends StatelessWidget {
  const StoreSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: white, 
      appBar: AppBar(
        title:
            "Store Settings".text
                .color(darkGrey)
                .size(18)
                .fontWeight(FontWeight.bold)
                .make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon:
                "Save".text
                    .color(darkGrey)
                    .size(16.0)
                    .fontWeight(FontWeight.bold)
                    .make(),
          ),
        ],
      ),
      body: Column(
        children: [
          CustomForm.simpleForm(
            "Shop Name",
            "e.g, Hassan Electronics",
            false,
            white,
          ),
          CustomForm.simpleForm(
            "Shop Address",
            "e.g, xyz,karachi",
            false,
            white,
          ),
          CustomForm.simpleForm(
            "Shop Mobile",
            "e.g, Hassan Electronics",
            false,
            white,
          ),
          CustomForm.simpleForm(
            "Shop Website",
            "e.g, www.shop.com",
            false,
            white,
          ),
          CustomForm.simpleForm(
            "Shop Description",
            "e.g, Write shop description here...",
            false,
            white,
          ),
        ],
      ),
    );
  }
}
