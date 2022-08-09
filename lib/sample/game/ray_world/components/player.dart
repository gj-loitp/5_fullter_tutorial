import 'package:flame/components.dart';
import 'package:hello_word/lib/game/helpers/direction.dart';

/**
 * Created by Loitp on 09,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class Player extends SpriteComponent with HasGameRef {
  static final _size = 50.0;
  final double _playerSpeed = 300.0;
  Direction direction = Direction.none;

  Player()
      : super(
          size: Vector2.all(_size),
        );

  @override
  Future<void> onLoad() async {
    super.onLoad();

    sprite = await gameRef.loadSprite('player.png');
    position = gameRef.size / 2 - Vector2.all(_size / 2);
  }

  // update is a function unique to Flame components.
  // It will be called each time a frame must be rendered,
  // and Flame will ensure all your game components update at the same time.
  // The delta represents how much time has passed since the last update cycle
  // and can be used to move the player predictably.
  @override
  void update(double delta) {
    super.update(delta);

    movePlayer(delta);
  }

  void movePlayer(double delta) {
    switch (direction) {
      case Direction.up:
        moveUp(delta);
        break;
      case Direction.down:
        moveDown(delta);
        break;
      case Direction.left:
        moveLeft(delta);
        break;
      case Direction.right:
        moveRight(delta);
        break;
      case Direction.none:
        break;
    }
  }

  void moveUp(double delta) {
    position.add(Vector2(0, delta * -_playerSpeed));
  }

  void moveDown(double delta) {
    position.add(Vector2(0, delta * _playerSpeed));
  }

  void moveLeft(double delta) {
    position.add(Vector2(delta * -_playerSpeed, 0));
  }

  void moveRight(double delta) {
    position.add(Vector2(delta * _playerSpeed, 0));
  }
}
