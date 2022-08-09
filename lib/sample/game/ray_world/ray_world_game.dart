import 'package:flame/game.dart';
import 'package:hello_word/lib/game/helpers/direction.dart';
import 'package:hello_word/sample/game/ray_world/components/player.dart';

/**
 * Created by Loitp on 09,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class RayWorldGame extends FlameGame {
  final Player _player = Player();

  @override
  Future<void> onLoad() async {
    add(_player);
  }

  void onJoypadDirectionChanged(Direction direction) {
    _player.direction = direction;
  }
}
