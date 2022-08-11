import 'package:flame/game.dart';
import 'package:flame_svg/flame_svg.dart';
import 'package:flutter/material.dart';

import 'widget/button_component.dart';

class GameStartWidget extends StatelessWidget {
  const GameStartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final game = GameClass();
    return Stack(
      children: [
        GameWidget(game: game),
        Align(
          alignment: Alignment.bottomRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonComponent(
                onPressed: () => {},
                buttonText: 'Fold',
              ),
              ButtonComponent(
                onPressed: () => {},
                buttonText: 'Check',
              ),
              ButtonComponent(
                onPressed: () => {},
                buttonText: 'Raise',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class GameClass with Game {
  late Svg trumpImageInstance;

  @override
  Future<void> onLoad() async {
    trumpImageInstance = await loadSvg('images/spade_4.svg');
  }

  @override
  void render(Canvas canvas) {
    trumpImageInstance.renderPosition(
        canvas, Vector2(100, 100), Vector2.all(300));
  }

  @override
  void update(double dt) {}
}
