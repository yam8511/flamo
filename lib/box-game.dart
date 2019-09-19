import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flame/game.dart';

class BoxGame extends Game {
  Size screenSize;
  bool hasWon = false;

  void render(Canvas canvas) {
    double screenCenterX = screenSize.width / 2;
    double screenCenterY = screenSize.height / 2;
    Rect boxRect =
        Rect.fromLTWH(screenCenterX - 75, screenCenterY - 75, 150, 150);
    Paint boxPaint = Paint();
    boxPaint.color = Color(0xffffffff);

    if (hasWon) {
      boxPaint.color = Color(0xff00ff00);
    } else {
      boxPaint.color = Color(0xffffffff);
    }

    canvas.drawRect(boxRect, boxPaint);
  }

  void update(double t) {
  }

  void resize(Size size) {
    screenSize = size;
    super.resize(size);
  }

  void onTapDown(TapDownDetails d) {
    double screenCenterX = screenSize.width / 2;
    double screenCenterY = screenSize.height / 2;
    if (d.globalPosition.dx >= screenCenterX - 75
      && d.globalPosition.dx <= screenCenterX + 75
      && d.globalPosition.dy >= screenCenterY - 75
      && d.globalPosition.dy <= screenCenterY + 75
    ) {
      hasWon = true;
    }
  }

  void onTapUp(TapUpDetails d) {
    hasWon = false;
  }
}
