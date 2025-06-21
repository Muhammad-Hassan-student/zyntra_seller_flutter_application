import 'package:zyntra_seller_application/const/const.dart';
import 'package:zyntra_seller_application/const/image.dart';

Widget dashboardButton(context, Color color,iconImage, {title, count}) {
  var size = MediaQuery.of(context).size;
  return Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "${title}".text.size(16).color(white).make(),
                "${count}".text.size(20).color(white).make(),
              ],
            ),
          ),
          Image.asset(iconImage, width: 40, color: white),
          10.widthBox,
        ],
      ).box
      .color(color)
      .size(size.width * 0.45, 80)
      .rounded
      .padding(const EdgeInsets.all(8))
      .make();
}
