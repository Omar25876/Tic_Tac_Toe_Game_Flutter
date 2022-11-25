import 'package:flutter/material.dart';
import 'package:tic_tac_game/player_name.dart';

import 'game_board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Game_Board.routeName: (conext) => Game_Board(),
        PlayersName.routeName: (conext) => PlayersName(),
      },
      initialRoute: PlayersName.routeName,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              color: Colors.deepPurple),
          headline2: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
              color: Colors.deepPurple),
          headline3: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w500, color: Colors.white),
          headline4: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.deepPurple),
        ),
      ),
    );
  }
}
