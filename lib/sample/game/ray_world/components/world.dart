import 'package:flame/components.dart';

class World extends SpriteComponent with HasGameRef {
  @override
  Future<void>? onLoad() async {
    sprite = await gameRef.loadSprite('rayworld_background.png');
    size = sprite?.originalSize ?? Vector2.all(0);
    return super.onLoad();
  }
}
