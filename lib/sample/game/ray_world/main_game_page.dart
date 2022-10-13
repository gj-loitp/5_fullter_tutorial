import 'package:com.roy93group.flutter_tutorial/lib/core/BaseStatefulState.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'helpers/direction.dart';
import 'helpers/joypad.dart';
import 'ray_world_game.dart';

/**
 * Created by Loitp on 08,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
//https://www.raywenderlich.com/27407121-building-games-in-flutter-with-flame-getting-started#toc-anchor-001
class MainGamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainGamePageState();
  }
}

class _MainGamePageState extends BaseStatefulState<MainGamePage> {
  RayWorldGame game = RayWorldGame();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: Stack(
        children: [
          GameWidget(game: game),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Joypad(onDirectionChanged: onJoypadDirectionChanged),
            ),
          )
        ],
      ),
    );
  }

  void onJoypadDirectionChanged(Direction direction) {
    game.onJoypadDirectionChanged(direction);
  }
}
