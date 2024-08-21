import 'package:flutter/material.dart';

class CoustomContainer extends StatelessWidget {
  final double? k_width;
  final double? k_hegith;
  final Color? k_bgColor;

  final Color? k_borderColor;
  final double? k_borderRadius;
  final double? k_borderWidth;

  final Widget? k_child;

  final Color? k_shadowColor;
  final double? k_shadowBlure;
  final double? k_shadowWidth;
  final Offset? k_offSet;

  final bool? k_isShadow;

  const CoustomContainer({
    super.key,
    this.k_width,
    this.k_hegith,
    this.k_bgColor,
    this.k_borderColor,
    this.k_borderRadius,
    this.k_borderWidth,
    this.k_child,
    this.k_shadowColor,
    this.k_shadowBlure,
    this.k_shadowWidth,
    this.k_offSet,
    this.k_isShadow,
  });

  @override
  Widget build(BuildContext context) {
    List<BoxShadow> boxShadow = [
      BoxShadow(
        color: k_shadowColor ?? Colors.transparent,
        blurRadius: k_shadowBlure ?? 0,
        spreadRadius: k_shadowWidth ?? 0,
        offset: k_offSet ?? Offset(0, 0),
      ),
    ];

    return Container(
      width: k_width,
      height: k_hegith,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(k_borderRadius ?? 5),
        color: k_bgColor ?? Color.fromARGB(255, 241, 241, 241),
        border: Border.all(
          color: k_borderColor ?? Colors.transparent,
          width: k_borderWidth ?? 0,
        ),
        boxShadow: boxShadow,
      ),
      child: k_child,
    );
  }
}
