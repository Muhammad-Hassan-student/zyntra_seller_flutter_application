import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zyntra_seller_application/const/colors.dart';
// import 'package:intl/intl.dart' as intl;

Widget sendBubble() {
  // var t = data['created_on'] == null ? DateTime.now() : data['created_on'].toDate();
  // var time = intl.DateFormat("h:mma").format(t);
  return Directionality(
    // textDirection: data['uid'] == currentUser!.uid ? TextDirection.rtl : TextDirection.ltr,
    textDirection: TextDirection.rtl,
    child: Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: appColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          "this is du=mmy message bcz app is in building mode".text.white
              .make(),
          // "${data['msg']}".text.white.size(16).make(),
          10.heightBox,
          // "${time}".text.color(whiteColor.withOpacity(0.5)).make()
          "4:27pm".text.white.make(),
        ],
      ),
    ),
  );
}
