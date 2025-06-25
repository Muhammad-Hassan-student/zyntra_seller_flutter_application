import 'package:zyntra_seller_application/const/const.dart';
import 'package:get/get.dart';
import 'package:zyntra_seller_application/messages/chat_screen.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title:
            message
                .toString()
                .text
                .color(darkGrey)
                .fontWeight(FontWeight.bold)
                .make(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: List.generate(
            20,
            (index) => ListTile(
              onTap: () {
                Get.to(() => const ChatScreen());
              },
              leading: CircleAvatar(
                backgroundColor: appColor,
                child: Icon(Icons.person, color: white),
              ),
              title: "Usernmae".text.make(),
              subtitle: "last message".text.make(),
              trailing: "4:28AM".text.make(),
            ),
          ),
        ),
      ),
    );
  }
}
