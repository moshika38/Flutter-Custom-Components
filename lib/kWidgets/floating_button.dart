import 'package:flutter/material.dart';
 
class CoustomFloatingActionButton extends StatelessWidget {
  final double? width;
  final double? height;

  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;

  final double? buttonRadius;

  final Color? bgcolors;
  final LinearGradient? gradient;

  final Color? borderColor;
  final double? borderWidth;

  final Function onPress;

  const CoustomFloatingActionButton({
    super.key,
    this.width,
    this.height,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.buttonRadius,
    this.bgcolors,
    this.gradient,
    this.borderColor,
    this.borderWidth, 
    required this.onPress,
     
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width ?? 65,
      width: height ?? 65,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: gradient ??
            const LinearGradient(
              colors: [
                Colors.pink,
                Colors.purple,
              ],
            ),
        border: Border.all(
          color: borderColor ?? Colors.white,
          width: borderWidth ?? 0,
        ),
      ),
      child: FloatingActionButton(
        onPressed: () {
          onPress();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonRadius ?? 35.0),
        ),
        backgroundColor: bgcolors ?? Colors.transparent,
        child: Icon(
          icon ?? Icons.add,
          size: iconSize ?? 22,
          color: iconColor ?? Colors.white,
        ),
      ),
    );
  }
}

/* 

======================================================

floatingActionButton: CoustomFloatingActionButton(          
  onPressed: () { 
    print('Floating Action Button Pressed!');
  },
),

======================================================

*/
