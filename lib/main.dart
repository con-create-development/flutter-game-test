import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import 'package:flame_game/game/game_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flame Game',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.cyan,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.cyan,
      ),
      home: const StartGame(),
    );
  }
}

class StartGame extends StatelessWidget {
  const StartGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flame Game')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  // （2） 実際に表示するページ(ウィジェット)を指定する
                  builder: (context) => const GameStartWidget())),
          child: const Text('Game Start'),
        ),
      ),
    );
  }
}

class GameStartWidget extends StatelessWidget {
  const GameStartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final game = GameClass();
    return GameWidget(game: game);
  }
}
