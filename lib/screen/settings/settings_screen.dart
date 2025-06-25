import 'package:get/get.dart';
import 'package:zyntra_seller_application/const/const.dart';
import 'package:zyntra_seller_application/const/image.dart';
import 'package:zyntra_seller_application/messages/messages_screen.dart';
import 'package:zyntra_seller_application/profile/edit_profile_screen.dart';
import 'package:zyntra_seller_application/store-settings/store_settings.dart';
import 'package:zyntra_seller_application/widgets/AppBar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title:
            settings
                .toString()
                .text
                .color(darkGrey)
                .size(22)
                .color(darkGrey)
                .fontWeight(FontWeight.bold)
                .make(),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => EditProfileScreen());
            },
            icon: const Icon(Icons.edit),
          ),
          TextButton(
            onPressed: () {},
            child: "Logout".text.color(darkGrey).make(),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading:
                Image.asset(pr1).box.roundedFull.clip(Clip.antiAlias).make(),
            title:
                "Vendor name".text
                    .size(16)
                    .color(darkGrey)
                    .fontWeight(FontWeight.bold)
                    .make(),
            subtitle: "vendor@gmail.com".text.size(14).color(darkGrey).make(),
          ),
          10.heightBox,
          const Divider(),
          10.heightBox,
          Column(
            children: List.generate(
              profileButtonTitle.length,
              (index) => ListTile(
                onTap: () {
                  switch (index) {
                    case 0:
                      Get.to(() => StoreSettings());
                      break;
                    case 1:
                      Get.to(() => MessagesScreen());
                  }
                },
                leading: profileButtonIcon[index],
                title: profileButtonTitle[index].text.make(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
