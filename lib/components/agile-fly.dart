import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:flamo/components/fly.dart';
import 'package:flamo/langaw-game.dart';

class AgileFly extends Fly {
  double get speed => game.tileSize * 5;

  AgileFly(LangawGame game, double x, double y) : super(game) {
    flyingSprite = List<Sprite>();
    flyingSprite.add(Sprite('flies/agile-fly-1.png'));
    flyingSprite.add(Sprite('flies/agile-fly-2.png'));
    deadSprite = Sprite('flies/agile-fly-dead.png');
    flyRect = Rect.fromLTWH(x, y, game.tileSize * 1.5, game.tileSize * 1.5);
  }
}
