import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  ButtonComponent(
      {required this.dig, required this.index, required this.clicked});
  String dig;
  int index;
  Function clicked;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ElevatedButton(
          onPressed: () {
            clicked(index);
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepPurple)),
          child: Text(
            '$dig',
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
