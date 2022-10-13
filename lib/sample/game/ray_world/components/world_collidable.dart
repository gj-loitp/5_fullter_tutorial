import 'package:flame/components.dart';
import 'package:flame/geometry.dart';

class WorldCollidable extends PositionComponent
    with HasGameRef, Hitbox, Collidable {
  WorldCollidable() {
    addHitbox(HitboxRectangle());
  }
}
