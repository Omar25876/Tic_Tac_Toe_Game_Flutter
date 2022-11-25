import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_game/player_name.dart';

import 'btn_.dart';

class Game_Board extends StatefulWidget {
  static String routeName = 'Game Board';
  Game_Board();

  @override
  State<Game_Board> createState() => _Game_BoardState();
}

class _Game_BoardState extends State<Game_Board> {
  List<String> boardtext = ["", "", "", "", "", "", "", "", ""];
  int player1score = 0;
  int player2score = 0;

  @override
  Widget build(BuildContext context) {
    playernamee arg = ModalRoute.of(context)?.settings.arguments as playernamee;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(' Game Board ', style: Theme.of(context).textTheme.headline3),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${arg.pl1}',
                        style: Theme.of(context).textTheme.headline1),
                    Text('$player1score',
                        style: Theme.of(context).textTheme.headline1),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${arg.pl2}',
                        style: Theme.of(context).textTheme.headline1),
                    Text('$player2score',
                        style: Theme.of(context).textTheme.headline1),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonComponent(
                  dig: boardtext[0],
                  index: 0,
                  clicked: btnclicked,
                ),
                ButtonComponent(
                  dig: boardtext[1],
                  index: 1,
                  clicked: btnclicked,
                ),
                ButtonComponent(
                  dig: boardtext[2],
                  index: 2,
                  clicked: btnclicked,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonComponent(
                  dig: boardtext[3],
                  index: 3,
                  clicked: btnclicked,
                ),
                ButtonComponent(
                  dig: boardtext[4],
                  index: 4,
                  clicked: btnclicked,
                ),
                ButtonComponent(
                  dig: boardtext[5],
                  index: 5,
                  clicked: btnclicked,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonComponent(
                  dig: boardtext[6],
                  index: 6,
                  clicked: btnclicked,
                ),
                ButtonComponent(
                  dig: boardtext[7],
                  index: 7,
                  clicked: btnclicked,
                ),
                ButtonComponent(
                  dig: boardtext[8],
                  index: 8,
                  clicked: btnclicked,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int counter = 0;
  void btnclicked(index) {
    if (boardtext[index].isNotEmpty) {
      return;
    }
    if (counter % 2 == 0) {
      boardtext[index] = "X";
      counter++;
      var win = Checkwinerr("X");
      if (win) {
        player1score++;
        clearBoard();
        counter = 0;
      }
    } else {
      boardtext[index] = "O";
      counter++;
      var win = Checkwinerr("O");
      if (win) {
        player2score++;
        clearBoard();
        counter = 0;
      }
    }
    if (counter == 9) {
      clearBoard();
      counter = 0;
    }

    setState(() {});
  }

  bool Checkwinerr(String symbol) {
    for (int i = 0; i < 9; i += 3) {
      if (boardtext[i] == symbol &&
          boardtext[i + 1] == symbol &&
          boardtext[i + 2] == symbol) {
        return true;
      }
    }

    for (int i = 0; i < 3; i++) {
      if (boardtext[i] == symbol &&
          boardtext[i + 3] == symbol &&
          boardtext[i + 6] == symbol) {
        return true;
      }
    }

    if (boardtext[0] == symbol &&
        boardtext[4] == symbol &&
        boardtext[8] == symbol) {
      return true;
    }
    if (boardtext[2] == symbol &&
        boardtext[4] == symbol &&
        boardtext[6] == symbol) {
      return true;
    }
    return false;
  }

  void clearBoard() {
    boardtext = ["", "", "", "", "", "", "", "", ""];
  }
}
