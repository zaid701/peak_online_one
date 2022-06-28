// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final Gradient gradient;
  final double size;

  const GradientIcon(this.icon, this.gradient, {this.size = 25, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
        child: CustomPaint(
      size: Size(size, size),
      painter:
          _GradientIconPainter(icon: icon, gradient: gradient, iconSize: size),
    ));
  }
}

class _GradientIconPainter extends CustomPainter {
  final IconData? icon;
  final Gradient? gradient;
  final double? iconSize;

  _GradientIconPainter(
      {Listenable? repaint,
      @required this.icon,
      @required this.gradient,
      @required this.iconSize})
      : super(repaint: repaint);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint _gradientShaderPaint = Paint()
      ..shader = gradient!
          .createShader(Rect.fromLTWH(0.0, 0.0, size.width, size.height));

    final TextPainter _textPainter = TextPainter(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: String.fromCharCode(icon!.codePoint),
          style: TextStyle(
              foreground: _gradientShaderPaint,
              fontFamily: icon!.fontFamily,
              fontSize: iconSize),
        ));
    _textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final xCenter = (size.width - _textPainter.width) / 2;
    final yCenter = (size.height - _textPainter.height) / 2;
    final offset = Offset(xCenter, yCenter + 6);
    _textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(_GradientIconPainter oldDelegate) {
    return icon != oldDelegate.icon ||
        gradient != oldDelegate.gradient ||
        iconSize != oldDelegate.iconSize;
  }
}
