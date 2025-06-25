import 'package:flutter/material.dart';
import 'package:zyntra_seller_application/const/colors.dart';
import 'package:zyntra_seller_application/const/const.dart';
import 'package:zyntra_seller_application/widgets/sendBubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title:
            chat
                .toString()
                .text
                .color(darkGrey)
                .fontWeight(FontWeight.bold)
                .make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //Message seen area
            Expanded(
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return sendBubble();
                }),
                itemCount: 20,
              ),
            ),
            10.heightBox,
            //messsage input area
            SizedBox(
              height: 80,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "Write your message here...",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: appColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appColor),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send, color: appColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
