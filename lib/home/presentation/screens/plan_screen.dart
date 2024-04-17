import 'package:flutter/material.dart';
import 'package:mad_soft/home/data/model/point.dart';
import 'package:mad_soft/utils/images.dart';

class PlanScreenExtra {
  PlanScreenExtra({
    required this.points,
    required this.title,
  });

  final List<Point> points;
  final String title;
}

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key, required this.extra});

  final PlanScreenExtra extra;

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.extra.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: InteractiveViewer(
        panEnabled: true,
        minScale: 1,
        maxScale: 100,
        child: Center(
          child: CustomPaint(
            foregroundPainter: _DotsPainter(
              points: widget.extra.points,
              screenSize: screenSize,
            ),
            child: Image.asset(
              alignment: Alignment.center,
              AppImages.mockScheme,
            ),
          ),
        ),
      ),
    );
  }
}

class _DotsPainter extends CustomPainter {
  _DotsPainter({
    required this.points,
    required this.screenSize,
  });

  final List<Point> points;
  final Size screenSize;

  @override
  void paint(Canvas canvas, Size size) {
    /// Размеры моковой картинки
    const iW = 1640;
    const iH = 866;

    /// Высчитываем высоту картинки относительно экрана
    final h = screenSize.width / iW * iH;

    final Paint completedPaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    final Paint inCompletedPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    for (final point in points) {
      /// Пересчитываем координаты точек
      final x = point.x * screenSize.width / iW;
      final y = point.y * h / iH;

      final offset = Offset(x, y);

      canvas.drawCircle(
        offset,
        5,
        point.status == PointStatus.completed
            ? completedPaint
            : inCompletedPaint,
      );

      const iconSize = 6.0;
      final iconData = point.status == PointStatus.completed
          ? Icons.check
          : Icons.camera_alt;

      final textSpan = TextSpan(
        text: String.fromCharCode(iconData.codePoint),
        style: TextStyle(
          fontFamily: iconData.fontFamily,
          fontSize: iconSize,
          color: Colors.white,
        ),
      );

      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      textPainter.paint(
        canvas,
        offset - Offset(textPainter.width / 2, textPainter.height / 2),
      );
    }
  }

  @override
  bool shouldRepaint(_DotsPainter oldDelegate) => false;
}
