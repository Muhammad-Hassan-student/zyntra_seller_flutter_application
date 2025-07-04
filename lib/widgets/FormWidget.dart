import 'package:zyntra_seller_application/const/const.dart';

class CustomForm {
  //Form Field
  static Widget FormField(controller, String hint, bool obsecure) {
    return TextField(
      obscureText: obsecure,
      obscuringCharacter: '●',

      decoration: InputDecoration(
        labelText: hint,
        labelStyle: TextStyle(color: Colors.black38, fontSize: 16),
        //Content Padding
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 18.0,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide.none,
        ),

        focusColor: Colors.red,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide(color: Colors.blue, width: 1.5),
        ),
        filled: true,
        fillColor: Colors.grey[100],
      ),
    );
  }

  //Profile Form Field
  static Widget formWithLabel(
    String label,
    controller,
    String hint,
    bool obsecure,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label.toString().text.color(darkGrey).size(16).make(),
        3.heightBox,
        TextField(
          obscureText: obsecure,
          obscuringCharacter: '●',

          decoration: InputDecoration(
            labelText: hint,
            labelStyle: TextStyle(color: Colors.black38, fontSize: 16),
            //Content Padding
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 18.0,
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: BorderSide.none,
            ),

            focusColor: Colors.red,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: BorderSide(color: Colors.blue, width: 1.5),
            ),
            filled: true,
            fillColor: Colors.grey[100],
          ),
        ),
      ],
    );
  }

  //Profile Form Field
  static Widget simpleForm(
    String label,
    String hint,
    bool obsecure,
    Color color,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          label.toString().text.color(darkGrey).size(16).make(),
          3.heightBox,
          TextField(
            obscureText: obsecure,
            obscuringCharacter: '●',

            decoration: InputDecoration(
              labelText: hint,
              labelStyle: TextStyle(color: Colors.black38, fontSize: 14),
              //Content Padding
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 12.0,
              ),

              focusColor: Colors.red,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
                
                              ),
              filled: true,
              fillColor: color,
            ),
          ),
        ],
      ),
    );
  }

  static Widget formButton(
    onPressed,
    String title,
    Color backgroundColor,
    Color titleColor,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: title.text.color(titleColor).make(),
          ),
        ),
      ),
    );
  }
}
