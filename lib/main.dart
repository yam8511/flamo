import 'package:flame/util.dart';
import 'package:flutter/services.dart';
import 'package:flamo/box-game.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';

void main() async {
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  BoxGame game = BoxGame();
  TapGestureRecognizer tapper = TapGestureRecognizer();
  tapper.onTapDown = game.onTapDown;
  tapper.onTapUp = game.onTapUp;
  runApp(game.widget);
  flameUtil.addGestureRecognizer(tapper);
}
