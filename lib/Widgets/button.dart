import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final String text;
  final Widget? icon;
  final double width;
  final double height;
  final double radius;
  final double fsize;
  final String fweight;
  final String ffamily;
  final Color border;
  final VoidCallback onTap;

  const AppButton({
    Key? key,
    required this.backgroundColor,
    required this.text,
    required this.width,
    required this.height,
    required this.textColor,
    required this.fsize,
    required this.ffamily,
    required this.fweight,
    required this.icon,
    required this.radius,
    required this.onTap,
    required this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: border),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) icon!,
              if (icon != null) SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: fsize,
                  fontFamily: ffamily,
                 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
