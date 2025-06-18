import 'package:flutter/material.dart';
import 'package:zyntra_seller_application/const/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: "HOme".text.make(),
        automaticallyImplyLeading: true,
      ),
      body: Container(),
    );
  }
}
