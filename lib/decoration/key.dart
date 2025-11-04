import 'package:bonfire/bonfire.dart';
import 'package:darkness_dungeon/main.dart';
import 'package:darkness_dungeon/player/lumberjack.dart';

class DoorKey extends GameDecoration with Sensor {
  DoorKey(Vector2 position)
      : super.withSprite(
          sprite: Sprite.load('items/key_silver.png'),
          position: position,
          size: Vector2(tileSize, tileSize),
        );

  @override
  void onContact(GameComponent collision) {
    if (collision is Lumberjack) {
      collision.containKey = true;
      removeFromParent();
    }
  }
}
