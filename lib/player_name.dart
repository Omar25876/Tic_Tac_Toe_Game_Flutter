import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'game_board.dart';

class PlayersName extends StatelessWidget {
  PlayersName({Key? key}) : super(key: key);
  static String routeName = 'players';
  String? pl1 = 'Player 1';
  String? pl2 = 'Player 2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title:
            Text('Players Name', style: Theme.of(context).textTheme.headline3),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
            child: TextFormField(
              style: Theme.of(context).textTheme.headline4,
              decoration: InputDecoration(
                fillColor: Colors.deepPurple,
                labelText: 'Enter First Player Name',
                labelStyle: const TextStyle(color: Colors.deepPurple),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.deepPurple),
                ),
                focusColor: Colors.deepPurple,
                hoverColor: Colors.deepPurple,
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.deepPurple,
                  size: 32,
                ),
              ),
              cursorColor: Colors.deepPurple,
              onChanged: (value) {
                pl1 = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
            child: TextFormField(
              style: Theme.of(context).textTheme.headline4,
              decoration: InputDecoration(
                fillColor: Colors.deepPurple,
                labelText: 'Enter Second Player Name',
                labelStyle: const TextStyle(color: Colors.deepPurple),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.deepPurple),
                ),
                focusColor: Colors.deepPurple,
                hoverColor: Colors.deepPurple,
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.deepPurple,
                  size: 32,
                ),
              ),
              cursorColor: Colors.deepPurple,
              onChanged: (value) {
                pl2 = value;
              },
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Game_Board.routeName,
                  arguments: playernamee(pl1!, pl2!));
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 18, 50, 18),
              child: Text(' Start Game ',
                  style: Theme.of(context).textTheme.headline3),
            ),
          ),
        ],
      ),
    );
  }
}

class playernamee {
  String pl1 = '';
  String pl2 = '';
  playernamee(this.pl1, this.pl2);
}
