import 'package:flame/components.dart';

class Player extends SpriteComponent with HasGameRef {
  static final _size = 50.0;

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
}
