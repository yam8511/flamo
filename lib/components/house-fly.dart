import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:flamo/components/fly.dart';
import 'package:flamo/langaw-game.dart';

class HouseFly extends Fly {
  HouseFly(LangawGame game, double x, double y) : super(game) {
    flyingSprite = List<Sprite>();
    flyingSprite.add(Sprite('flies/house-fly-1.png'));
    flyingSprite.add(Sprite('flies/house-fly-2.png'));
    flyRect = Rect.fromLTWH(x, y, game.tileSize * 1.5, game.tileSize * 1.5);
    deadSprite = Sprite('flies/house-fly-dead.png');
  }
}
