import 'package:bonfire/bonfire.dart';
import 'package:darkness_dungeon/interface/bar_life_component.dart';
import 'package:darkness_dungeon/player/lumberjack.dart';

class LumberjackInterface extends GameInterface {
  late Sprite keySprite;

  @override
  Future<void> onLoad() async {
    keySprite = await Sprite.load('items/key_silver.png');
    add(MyBarLifeComponent());
    return super.onLoad();
  }

  @override
  void render(Canvas canvas) {
    try {
      _drawKey(canvas);
    } catch (e) {}
    super.render(canvas);
  }

  void _drawKey(Canvas c) {
    if (gameRef.player != null && (gameRef.player as Lumberjack).containKey) {
      keySprite.renderRect(c, Rect.fromLTWH(150, 20, 35, 30));
    }
  }
}
