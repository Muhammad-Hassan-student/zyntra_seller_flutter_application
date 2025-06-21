import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zyntra_seller_application/const/const.dart';
import 'package:zyntra_seller_application/const/image.dart';
import 'package:zyntra_seller_application/widgets/AppBar.dart';
import 'package:intl/intl.dart' as intl;

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWidget(title: orders, color: darkGrey),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: List.generate(
              20,
              (index) =>
                  ListTile(
                    // tileColor: Colors.blue[100],
                    onTap: () {},
                    title:
                        "154455445154".text
                            .color(white)
                            .fontWeight(FontWeight.w600)
                            .make(),
                    subtitle: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month, color: white),
                            10.heightBox,
                            "${intl.DateFormat().add_yMd().format(DateTime.now())}"
                                .text
                                .color(white)
                                .make(),
                          ],
                        ),
                        Row(
                          children: [
                            "${unpaid}".text
                                .size(14)
                                .fontWeight(FontWeight.bold)
                                .color(red)
                                .make(),
                          ],
                        ),
                      ],
                    ),
                    trailing: "\$44.0".text.color(white).size(16).make(),
                  ).box.margin(const EdgeInsets.only(bottom: 5)).linearGradient(
                    [Colors.blue[500]!, Colors.green[500]!],
                  ).make(),
            ),
          ),
        ),
      ),
    );
  }
}
