import 'package:flutter/material.dart';

import '../../../../core/utils/ui.dart';
import '../../../../core/widgets/text_widget.dart';

class RootDividerWidget extends StatelessWidget {
  const RootDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextWidget(
          text: "transactions",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 18),
            height: 2,
            decoration: Ui.getBox(
              color: Colors.black,
              borderRadius: 2,
            ),
          ),
        ),
        CustomPaint(
          size: const Size(16, 16), // Adjust size as needed
          painter: TrianglePainter(),
        ),
      ],
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final Path path = Path()
      ..moveTo(0, size.height / 2) // Left point of the triangle
      ..lineTo(size.width, 0) // Top-right point
      ..lineTo(size.width, size.height) // Bottom-right point
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
