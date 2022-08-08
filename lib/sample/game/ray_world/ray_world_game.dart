import 'package:flame/game.dart';
import 'package:hello_word/sample/game/ray_world/components/player.dart';

class RayWorldGame extends FlameGame {
  final Player _player = Player();

  @override
  Future<void> onLoad() async {
    add(_player);
  }
}
