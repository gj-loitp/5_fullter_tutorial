import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flame/sprite.dart';
import 'package:com.roy93group.flutter_tutorial/sample/game/ray_world/components/world_collidable.dart';
import 'package:com.roy93group.flutter_tutorial/sample/game/ray_world/helpers/direction.dart';

/**
 * Created by Loitp on 09,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class Player extends SpriteAnimationComponent
    with HasGameRef, Hitbox, Collidable {
  static final _size = 50.0;
  final double _playerSpeed = 300.0;
  Direction direction = Direction.none;

  final double _animationSpeed = 0.15;
  late final SpriteAnimation _runDownAnimation;
  late final SpriteAnimation _runLeftAnimation;
  late final SpriteAnimation _runUpAnimation;
  late final SpriteAnimation _runRightAnimation;
  late final SpriteAnimation _standingAnimation;

  Direction _collisionDirection = Direction.none;
  bool _hasCollided = false;

  Player()
      : super(
          size: Vector2.all(_size),
        ) {
    addHitbox(HitboxRectangle());
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();

    // sprite = await gameRef.loadSprite('player.png');
    // position = gameRef.size / 2 - Vector2.all(_size / 2);
    _loadAnimations().then((_) => {animation = _standingAnimation});
  }

  Future<void> _loadAnimations() async {
    final spriteSheet = SpriteSheet(
      image: await gameRef.images.load('player_spritesheet.png'),
      srcSize: Vector2(29.0, 32.0),
    );

    _runDownAnimation =
        spriteSheet.createAnimation(row: 0, stepTime: _animationSpeed, to: 4);
    _runUpAnimation =
        spriteSheet.createAnimation(row: 2, stepTime: _animationSpeed, to: 4);
    _runLeftAnimation =
        spriteSheet.createAnimation(row: 1, stepTime: _animationSpeed, to: 4);
    _runRightAnimation =
        spriteSheet.createAnimation(row: 3, stepTime: _animationSpeed, to: 4);
    _standingAnimation =
        spriteSheet.createAnimation(row: 0, stepTime: _animationSpeed, to: 1);
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
        if (canPlayerMoveUp()) {
          animation = _runUpAnimation;
          moveUp(delta);
        }
        break;
      case Direction.down:
        if (canPlayerMoveDown()) {
          animation = _runDownAnimation;
          moveDown(delta);
        }
        break;
      case Direction.left:
        if (canPlayerMoveLeft()) {
          animation = _runLeftAnimation;
          moveLeft(delta);
        }
        break;
      case Direction.right:
        if (canPlayerMoveRight()) {
          animation = _runRightAnimation;
          moveRight(delta);
        }
        break;
      case Direction.none:
        animation = _standingAnimation;
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

  bool canPlayerMoveUp() {
    if (_hasCollided && _collisionDirection == Direction.up) {
      return false;
    }
    return true;
  }

  bool canPlayerMoveDown() {
    if (_hasCollided && _collisionDirection == Direction.down) {
      return false;
    }
    return true;
  }

  bool canPlayerMoveLeft() {
    if (_hasCollided && _collisionDirection == Direction.left) {
      return false;
    }
    return true;
  }

  bool canPlayerMoveRight() {
    if (_hasCollided && _collisionDirection == Direction.right) {
      return false;
    }
    return true;
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, Collidable other) {
    super.onCollision(intersectionPoints, other);

    if (other is WorldCollidable) {
      if (!_hasCollided) {
        _hasCollided = true;
        _collisionDirection = direction;
      }
    }
  }

  @override
  void onCollisionEnd(Collidable other) {
    // super.onCollisionEnd(other);
    _hasCollided = false;
  }
}
