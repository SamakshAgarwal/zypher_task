import 'package:flutter/material.dart';

class IconGradient extends StatelessWidget {
  final Widget child;
  IconGradient({this.child}):assert(child!=null);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) => RadialGradient(
          colors: <Color>[Colors.lightGreen, Colors.white],
          radius: 1.0,
          center: Alignment.centerLeft,
          tileMode: TileMode.mirror)
          .createShader(bounds),
      child: child,
    );
  }
}
