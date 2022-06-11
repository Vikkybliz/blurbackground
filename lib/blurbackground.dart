library dialogblur;
import 'dart:ui';

import 'package:flutter/material.dart';

export 'blurbackground.dart';

class BlurBackground extends StatelessWidget {
  const BlurBackground({
    Key? key,
    required this.blurX,
    required this.blurY,
    required this.child,
  }) : super(key: key);

  final double blurX;
  final double blurY;
  final Widget child;


  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(
            sigmaX: blurX,
            sigmaY: blurY
        ),
            child: child,
    );
  }
}



