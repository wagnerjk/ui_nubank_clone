import 'package:flutter/material.dart';

class EngrossaTexto extends StatelessWidget {

  final double fontSize;
  final double letterSpacing;
  final double strokeWidth;
  final Color color;
  final String texto;

  EngrossaTexto(this.fontSize, this.letterSpacing, this.strokeWidth, this.color,
      this.texto);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Stroked text as border.
        Text(
          this.texto,
          style: TextStyle(
            fontSize: this.fontSize,
            letterSpacing: this.letterSpacing,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = this.strokeWidth
              ..color = this.color,
          ),
        ),
        // Solid text as fill.
        Text(
          this.texto,
          style: TextStyle(
            fontSize: this.fontSize,
            letterSpacing: this.letterSpacing,
            fontWeight: FontWeight.bold,
            color: this.color,
          ),
        ),
      ],
    );
  }
}
