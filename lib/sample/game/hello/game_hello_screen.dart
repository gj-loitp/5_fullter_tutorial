import 'package:flutter/material.dart';
import 'package:hello_word/lib/core/base_stateful_state.dart';
import 'package:hello_word/lib/game/helpers/direction.dart';
import 'package:hello_word/lib/game/helpers/joypad.dart';

class GameHelloScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GameHelloScreenState();
  }
}

class _GameHelloScreenState extends BaseStatefulState<GameHelloScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: Stack(
        children: [
          // TODO 1
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
    // TODO 2
  }
}
