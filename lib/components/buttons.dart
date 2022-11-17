import 'package:calculator_app_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color btnColor;
  final String btnText;
  final VoidCallback btnOnPressed;

  const MyButton(
      {Key? key,
      required this.btnText,
      this.btnColor = const Color(0xffa5a5a5),
      required this.btnOnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: btnOnPressed,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: btnColor,
            ),
            child: Center(
              child: Text(
                btnText,
                style: textStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
