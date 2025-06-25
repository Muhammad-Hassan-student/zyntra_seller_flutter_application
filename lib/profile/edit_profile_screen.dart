import 'package:flutter/material.dart';
import 'package:zyntra_seller_application/const/const.dart';
import 'package:zyntra_seller_application/const/image.dart';
import 'package:zyntra_seller_application/const/strings.dart';
import 'package:zyntra_seller_application/widgets/FormWidget.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPassword = TextEditingController();
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title:
            editProfile
                .toString()
                .text
                .color(darkGrey)
                .fontWeight(FontWeight.bold)
                .make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon:
                "Save".text
                    .color(darkGrey)
                    .size(16)
                    .fontWeight(FontWeight.bold)
                    .make(),
          ),
        ],
      ),

      body: Column(
        children: [
          Image.asset(
            pr1,
            width: 150,
          ).box.roundedFull.clip(Clip.antiAlias).make(),
          5.heightBox,
          ElevatedButton(
            onPressed: () {},
            child: "Change Image".text.make(),
            style: ElevatedButton.styleFrom(
              backgroundColor: appColor,
              foregroundColor: white,
            ),
          ),
          10.heightBox,
          const Divider(),
          Column(
            children: [
              CustomForm.formWithLabel(
                "Full Name",
                nameController,
                "eg. Muhammad Hassan",
                false,
              ),
              10.heightBox,
              CustomForm.formWithLabel(
                "Password",
                passwordController,
                "* * * * * * * *",
                true,
              ),
              10.heightBox,
              CustomForm.formWithLabel(
                "Confirm Password",
                confirmPassword,
                "* * * * * * * * ",
                true,
              ),
              10.heightBox,
            ],
          ).box.padding(const EdgeInsets.symmetric(horizontal: 5)).make(),
        ],
      ),
    );
  }
}
