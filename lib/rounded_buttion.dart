import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key, required this.text, required this.onPressed, this.backgroundColor, this.textColor,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor, textColor;
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: textColor,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      backgroundColor: backgroundColor,
    );

    return SizedBox(width: size.width * 0.8,
          child: TextButton(
        style: flatButtonStyle,
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}