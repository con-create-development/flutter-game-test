import 'package:flame/game.dart';
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
  @override
  Future<void> onLoad() async {}

  @override
  void render(Canvas canvas) {
    // TODO: implement render
  }

  @override
  void update(double dt) {
    // TODO: implement update
  }
}
