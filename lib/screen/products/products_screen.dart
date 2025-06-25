import 'package:zyntra_seller_application/const/const.dart';
import 'package:zyntra_seller_application/widgets/AppBar.dart';
import 'package:zyntra_seller_application/const/image.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: appColor,
        foregroundColor: white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
      appBar: appBarWidget(title: products, color: darkGrey),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: List.generate(
              20,
              (index) => ListTile(
                onTap: () {},
                leading: Image.asset(
                  pr1,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                title: "Product Title".text.color(fontGrey).make(),
                subtitle: "\$40.0".text.color(darkGrey).make(),
                trailing: VxPopupMenu(
                  child: Icon(Icons.more_vert_outlined),
                  arrowSize: 0.0,
                  menuBuilder:
                      () =>
                          Column(
                                children: List.generate(
                                  popMenuTitles.length,
                                  (index) => Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                        ),
                                        child: Row(
                                              children: [
                                                Icon(
                                                  popMenuIcons[index],
                                                  color: white,
                                                ),
                                                5.widthBox,
                                                popMenuTitles[index]
                                                    .toString()
                                                    .text
                                                    .color(white)
                                                    .make(),
                                              ],
                                            ).box
                                            .margin(
                                              const EdgeInsets.only(bottom: 5),
                                            )
                                            .make()
                                            .onTap(() {}),
                                      ),
                                      index < popMenuIcons.length - 1
                                          ? Divider(
                                            color: Colors.white,
                                            height: 1,
                                            thickness: 1,
                                          )
                                          : Container(),
                                    ],
                                  ),
                                ),
                              ).box
                              .color(Colors.red.shade700)
                              .width(200)
                              .padding(const EdgeInsets.all(12))
                              .make(),
                  clickType: VxClickType.singleClick,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
