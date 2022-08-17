import 'package:flutter/material.dart';

import 'package:flame/effects.dart';
import 'package:flame/game.dart';

import 'package:flame_game/game/component/trump.dart';

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
                onPressed: () => {
                  game.trump.add(
                    MoveEffect.by(
                      Vector2(10, 10),
                      EffectController(
                        duration: 0.5,
                        curve: Curves.easeInOutSine,
                      ),
                    ),
                  ),
                },
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

class GameClass extends FlameGame {
  late Trump trump;

  @override
  Future<void> onLoad() async {
    // SVG画像を読み込み
    trump = Trump(positionIn: Vector2(100, 100), kind: TrumpKind.spade, no: 4);
    add(trump);
  }
}
