import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  
  final Color backgroundColor;
   
  final Widget? icon;
  final double width;
  final double height;
  final double radius;
 
  final VoidCallback onTap;

  const ButtonIcon({
    Key? key,
    required this.backgroundColor,
     
    required this.width,
    required this.height,
     
    required this.icon,
    required this.radius,
    required this.onTap,
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
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) icon!,
              if (icon != null) SizedBox(width: 8),
              
            ],
          ),
        ),
      ),
    );
  }
}
