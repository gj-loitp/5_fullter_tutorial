import 'dart:ui';

import 'package:flame/game.dart';
import 'package:hello_word/lib/game/helpers/direction.dart';
import 'package:hello_word/sample/game/ray_world/components/player.dart';
import 'package:hello_word/sample/game/ray_world/components/world.dart';

/**
 * Created by Loitp on 09,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class RayWorldGame extends FlameGame {
  final Player _player = Player();
  final World _world = World();

  @override
  Future<void> onLoad() async {
    await add(_world);
    add(_player);

    _player.position = _world.size / 2;
    camera.followComponent(
      _player,
      worldBounds: Rect.fromLTRB(0, 0, _world.size.x, _world.size.y),
    );
  }

  void onJoypadDirectionChanged(Direction direction) {
    _player.direction = direction;
  }
}
