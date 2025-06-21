import 'package:zyntra_seller_application/const/const.dart';
import 'package:intl/intl.dart' as intl;

AppBar appBarWidget({title, color}) {
  return AppBar(
    automaticallyImplyLeading: false,
    title:
        "${title}".text
            .size(22)
            .color(color)
            .fontWeight(FontWeight.bold)
            .make(),
    actions: [
      Center(
        child:
            "${intl.DateFormat('EEE,MMM d,'
            'yy').format(DateTime.now())}".text.color(darkGrey).make(),
      ),
      10.widthBox,
    ],
  );
}
