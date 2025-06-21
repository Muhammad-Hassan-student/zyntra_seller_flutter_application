import 'package:zyntra_seller_application/const/const.dart';
import 'package:zyntra_seller_application/const/image.dart';
import 'package:zyntra_seller_application/widgets/AppBar.dart';
import 'package:zyntra_seller_application/widgets/DashboardButton.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: dashboard, color: darkGrey),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SECTION - CARDS BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(
                  context,
                  Color(0xff16BFFD),
                  icProduct,
                  title: products,
                  count: "77",
                ),
                dashboardButton(
                  context,
                  Color(0xff16BFFD),
                  icOrder,
                  title: products,
                  count: "77",
                ),
              ],
            ),
            10.heightBox,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(
                  context,
                  Color(0xff16BFFD),
                  icStar,
                  title: products,
                  count: "77",
                ),
                dashboardButton(
                  context,
                  Color(0xff16BFFD),
                  icProduct,
                  title: products,
                  count: "77",
                ),
              ],
            ),
            10.heightBox,
            const Divider(),
            10.heightBox,
            popluar.toString().text.color(darkGrey).size(16.0).make(),
            10.heightBox,
            //!SECTION - POPULAR PRODUCTS
            ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(
                3,
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
