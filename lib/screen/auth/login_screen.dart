import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zyntra_seller_application/const/const.dart';
import 'package:zyntra_seller_application/const/image.dart';
import 'package:zyntra_seller_application/screen/home/home.dart';
import 'package:zyntra_seller_application/screen/home/home_screen.dart';
import 'package:zyntra_seller_application/widgets/FormWidget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(loginImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child:
              Column(
                children: [
                  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Login".text.white.size(42).make(),
                          "Good to see you back! 🖤".text.white.size(16).make(),
                        ],
                      ).box
                      .width(double.infinity)
                      .padding(const EdgeInsets.symmetric(horizontal: 12))
                      .height(200)
                      .make(),

                  CustomForm.FormField(emailController, "Email", false),
                  10.heightBox,
                  CustomForm.FormField(passwordController, "Password", true),
                  10.heightBox,
                  Align(
                    alignment: Alignment.centerRight,
                    child: forgotPassword.text.make(),
                  ),
                  10.heightBox,
                  CustomForm.formButton(
                    () {
                      Get.offAll(() => const Home());
                    },
                    "Login",
                    Colors.blueAccent,
                    Colors.white,
                  ),
                  10.heightBox,
                  "In case of any difficult, contact with administrator".text
                      .size(12)
                      .make(),
                  Spacer(),
                  credit.text.size(16).fontWeight(FontWeight.bold).make(),
                  10.heightBox,
                ],
              ).box.padding(const EdgeInsets.symmetric(horizontal: 6)).make(),
        ),
      ),
    );
  }
}
