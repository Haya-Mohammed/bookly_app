import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final BorderRadiusGeometry? borderRadius;
  final String text;
  final Function()? onPressed;

  const CustomButton({super.key, 
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
    this.borderRadius,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: foregroundColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
