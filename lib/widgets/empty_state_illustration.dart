import 'package:flutter/material.dart';

class EmptyStateIllustration extends StatelessWidget {
  const EmptyStateIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _IllustrationPainter(),
    );
  }
}

class _IllustrationPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF3D5A99)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final fillPaint = Paint()
      ..color = const Color(0xFF3D5A99)
      ..style = PaintingStyle.fill;

    final w = size.width;
    final h = size.height;

    // ---- Large left speech bubble (top left) ----
    _drawSpeechBubbleLeft(canvas, paint,
      Rect.fromLTWH(w * 0.05, h * 0.06, w * 0.42, h * 0.26));

    // ---- Large right speech bubble (top right) ----
    _drawSpeechBubbleRight(canvas, paint,
      Rect.fromLTWH(w * 0.53, h * 0.22, w * 0.38, h * 0.22));

    // ---- Small bottom speech bubble (center-left) ----
    _drawSpeechBubbleLeft(canvas, paint,
      Rect.fromLTWH(w * 0.1, h * 0.52, w * 0.38, h * 0.17));

    // ---- Small circles (decorative) ----
    canvas.drawCircle(Offset(w * 0.82, h * 0.32), 5, paint);
    canvas.drawCircle(Offset(w * 0.12, h * 0.68), 7, paint);

    // ---- Woman body ----
    _drawWoman(canvas, paint, fillPaint, w, h);
  }

  void _drawSpeechBubbleLeft(Canvas canvas, Paint paint, Rect rect) {
    final radius = rect.height * 0.35;
    final path = Path();
    path.moveTo(rect.left + radius, rect.top);
    path.lineTo(rect.right - radius, rect.top);
    path.arcToPoint(
      Offset(rect.right, rect.top + radius),
      radius: Radius.circular(radius),
    );
    path.lineTo(rect.right, rect.bottom - radius);
    path.arcToPoint(
      Offset(rect.right - radius, rect.bottom),
      radius: Radius.circular(radius),
    );
    path.lineTo(rect.left + radius * 2.2, rect.bottom);
    // tail pointing down-left
    path.lineTo(rect.left + radius * 1.0, rect.bottom + rect.height * 0.35);
    path.lineTo(rect.left + radius * 1.7, rect.bottom);
    path.lineTo(rect.left + radius, rect.bottom);
    path.arcToPoint(
      Offset(rect.left, rect.bottom - radius),
      radius: Radius.circular(radius),
    );
    path.lineTo(rect.left, rect.top + radius);
    path.arcToPoint(
      Offset(rect.left + radius, rect.top),
      radius: Radius.circular(radius),
    );
    path.close();
    canvas.drawPath(path, paint);
  }

  void _drawSpeechBubbleRight(Canvas canvas, Paint paint, Rect rect) {
    final radius = rect.height * 0.35;
    final path = Path();
    path.moveTo(rect.left + radius, rect.top);
    path.lineTo(rect.right - radius, rect.top);
    path.arcToPoint(
      Offset(rect.right, rect.top + radius),
      radius: Radius.circular(radius),
    );
    path.lineTo(rect.right, rect.bottom - radius);
    path.arcToPoint(
      Offset(rect.right - radius, rect.bottom),
      radius: Radius.circular(radius),
    );
    path.lineTo(rect.right - radius * 1.7, rect.bottom);
    // tail pointing down-right
    path.lineTo(rect.right - radius * 1.0, rect.bottom + rect.height * 0.35);
    path.lineTo(rect.right - radius * 2.2, rect.bottom);
    path.lineTo(rect.left + radius, rect.bottom);
    path.arcToPoint(
      Offset(rect.left, rect.bottom - radius),
      radius: Radius.circular(radius),
    );
    path.lineTo(rect.left, rect.top + radius);
    path.arcToPoint(
      Offset(rect.left + radius, rect.top),
      radius: Radius.circular(radius),
    );
    path.close();
    canvas.drawPath(path, paint);
  }

  void _drawWoman(Canvas canvas, Paint paint, Paint fillPaint, double w, double h) {
    // Head
    canvas.drawCircle(Offset(w * 0.5, h * 0.37), w * 0.055, paint);

    // Hair - filled dark blob behind head
    final hairPaint = Paint()
      ..color = const Color(0xFF3D5A99)
      ..style = PaintingStyle.fill;
    final hairPath = Path();
    hairPath.moveTo(w * 0.5, h * 0.32);
    hairPath.cubicTo(
      w * 0.54, h * 0.30,
      w * 0.565, h * 0.34,
      w * 0.56, h * 0.42,
    );
    hairPath.cubicTo(
      w * 0.56, h * 0.50,
      w * 0.545, h * 0.55,
      w * 0.535, h * 0.58,
    );
    hairPath.lineTo(w * 0.525, h * 0.58);
    hairPath.cubicTo(
      w * 0.54, h * 0.54,
      w * 0.545, h * 0.49,
      w * 0.545, h * 0.43,
    );
    hairPath.cubicTo(
      w * 0.545, h * 0.36,
      w * 0.525, h * 0.315,
      w * 0.5, h * 0.315,
    );
    hairPath.close();
    canvas.drawPath(hairPath, hairPaint);

    // Neck
    canvas.drawLine(
      Offset(w * 0.5, h * 0.425),
      Offset(w * 0.5, h * 0.46),
      paint,
    );

    // Body (torso)
    final bodyPath = Path();
    bodyPath.moveTo(w * 0.385, h * 0.46);
    bodyPath.lineTo(w * 0.615, h * 0.46);
    bodyPath.lineTo(w * 0.61, h * 0.63);
    bodyPath.lineTo(w * 0.39, h * 0.63);
    bodyPath.close();
    canvas.drawPath(bodyPath, paint);

    // Left arm
    final leftArm = Path();
    leftArm.moveTo(w * 0.385, h * 0.48);
    leftArm.cubicTo(
      w * 0.30, h * 0.50,
      w * 0.28, h * 0.56,
      w * 0.30, h * 0.60,
    );
    canvas.drawPath(leftArm, paint);

    // Right arm
    final rightArm = Path();
    rightArm.moveTo(w * 0.615, h * 0.48);
    rightArm.cubicTo(
      w * 0.70, h * 0.50,
      w * 0.72, h * 0.56,
      w * 0.70, h * 0.60,
    );
    canvas.drawPath(rightArm, paint);

    // Left leg
    canvas.drawLine(
      Offset(w * 0.44, h * 0.63),
      Offset(w * 0.435, h * 0.79),
      paint,
    );
    // Left foot
    canvas.drawLine(
      Offset(w * 0.435, h * 0.79),
      Offset(w * 0.41, h * 0.79),
      paint,
    );

    // Right leg
    canvas.drawLine(
      Offset(w * 0.56, h * 0.63),
      Offset(w * 0.565, h * 0.79),
      paint,
    );
    // Right foot
    canvas.drawLine(
      Offset(w * 0.565, h * 0.79),
      Offset(w * 0.59, h * 0.79),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
