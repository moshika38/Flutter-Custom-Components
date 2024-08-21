
import 'package:flutter/material.dart';

class CoustomContainer extends StatelessWidget {
  final double? width;
  final double? hegith;
  final Color? bgColor;

  final Color? borderColor;
  final double? borderRadius;
  final double? borderWidth;

  final Widget? child;

  final Color? shadowColor;
  final double? shadowBlure;
  final double? shadowWidth;
  final Offset? offSet;

  final bool? isShadow;

  const CoustomContainer({
    super.key,
    this.width,
    this.hegith,
    this.bgColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.child,
    this.shadowColor,
    this.shadowBlure,
    this.shadowWidth,
    this.offSet,
    this.isShadow,
  });

  @override
  Widget build(BuildContext context) {
    List<BoxShadow> boxShadow = [
      BoxShadow(
        color: shadowColor ?? Colors.transparent,
        blurRadius: shadowBlure ?? 0,
        spreadRadius: shadowWidth ?? 0,
        offset: offSet ?? const Offset(0, 0),
      ),
    ];

    return Container(
      width: width,
      height: hegith,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 5),
        color: bgColor ?? const Color.fromARGB(255, 241, 241, 241),
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: borderWidth ?? 0,
        ),
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }
}
