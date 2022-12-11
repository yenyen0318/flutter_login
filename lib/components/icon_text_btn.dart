import 'package:flutter/material.dart';

class IconTextBtn extends StatelessWidget {
  const IconTextBtn(
      {super.key,
      required this.btnColor,
      required this.imagePath,
      required this.imageSize, required this.btnText, required this.btnTextStyle});

  final Color btnColor;
  final String imagePath;
  final double imageSize;
  final String btnText;
  final TextStyle? btnTextStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(btnColor),
            padding:
                MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(8)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
            ))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(height: imageSize, image: AssetImage(imagePath)),
            Text(btnText,
                style: btnTextStyle)
          ],
        ));
  }
}
