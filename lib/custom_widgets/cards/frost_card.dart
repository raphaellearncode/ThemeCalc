import 'package:flutter/material.dart';
import 'dart:ui';

class FrostCard extends StatelessWidget {
  final double topLeftRadius;
  final double topRightRadius;
  final double bottomLeftRadius;
  final double bottomRightRadius;
  final double marginTop;
  final double marginLeft;
  final double marginBottom;
  final double marginRight;
  final double paddingTop;
  final double paddingLeft;
  final double paddingBottom;
  final double paddingRight;
  final double sigmaX;
  final double sigmaY;
  final Color cardColor;
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final bool safeAreaTop;
  final bool safeAreaLeft;
  final bool safeAreaRight;
  final bool safeAreaBottom;

  FrostCard(
      {this.topLeftRadius = 0,
      this.topRightRadius = 0,
      this.bottomLeftRadius = 0,
      this.bottomRightRadius = 0,
      this.marginTop = 0,
      this.marginLeft = 0,
      this.marginBottom = 0,
      this.marginRight = 0,
      this.paddingTop = 0,
      this.paddingLeft = 0,
      this.paddingBottom = 0,
      this.paddingRight = 0,
      this.sigmaX = 10,
      this.sigmaY = 10,
      this.cardColor,
      @required this.children,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.safeAreaTop = true,
      this.safeAreaLeft = true,
      this.safeAreaRight = true,
      this.safeAreaBottom = true});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeftRadius),
          topRight: Radius.circular(topRightRadius),
          bottomLeft: Radius.circular(bottomLeftRadius),
          bottomRight: Radius.circular(bottomRightRadius)),
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
          child: Container(
            padding: EdgeInsets.only(
                top: paddingTop,
                left: paddingLeft,
                bottom: paddingBottom,
                right: paddingRight),
            margin: EdgeInsets.only(
                top: marginTop,
                left: marginLeft,
                bottom: marginBottom,
                right: marginRight),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeftRadius),
                  topRight: Radius.circular(topRightRadius),
                  bottomLeft: Radius.circular(bottomLeftRadius),
                  bottomRight: Radius.circular(bottomRightRadius)),
            ),
            child: SafeArea(
              top: safeAreaTop,
              left: safeAreaLeft,
              right: safeAreaRight,
              bottom: safeAreaBottom,
              child: Column(
                mainAxisAlignment: mainAxisAlignment,
                crossAxisAlignment: crossAxisAlignment,
                children: children,
              ),
            ),
          )),
    );
  }
}
