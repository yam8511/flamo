import 'dart:math';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flamo/fly.dart';
import 'package:flamo/components/backyard.dart';

class LangawGame extends Game {
  Size screenSize;
  double tileSize;
  List<Fly> flies;
  Random rnd;
  Backyard background;
  Rect bgRect;
  Paint bgPaint;

  LangawGame() {
    initialize();
  }

  void initialize() async {
    resize(await Flame.util.initialDimensions());
    bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    bgPaint = Paint();
    bgPaint.color = Color(0xff576574);
    rnd = Random();
    flies = List<Fly>();

    background = Backyard(this);
    spawnFly();
  }

  void spawnFly() {
    double x = rnd.nextDouble() * (screenSize.width - tileSize);
    double y = rnd.nextDouble() * (screenSize.height - tileSize);
    print('x = $x , y = $y');
    flies.add(Fly(this, x, y));
  }

  void render(Canvas canvas) {
    canvas.drawRect(bgRect, bgPaint);

    background.render(canvas);
    flies.forEach((Fly fly) => fly.render(canvas));
  }

  void update(double t) {
    background.update(t);
    flies.forEach((Fly fly) => fly.update(t));
    // flies.removeWhere((Fly fly) => fly.isOffScreen);
  }

  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 9;
  }

  void onTapDown(TapDownDetails d) {
    flies.forEach((Fly fly) {
      if (fly.flyRect.contains(d.globalPosition)) {
        fly.onTapDown();
      }
    });
  }

  void onTapUp(TapUpDetails d) {
    // hasWon = false;
  }
}
