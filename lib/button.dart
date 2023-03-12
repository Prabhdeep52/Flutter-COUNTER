import 'main.dart';
import "package:flutter/material.dart";
import 'options.dart';

class bbutton extends StatelessWidget {
  //const bbutton({Key? key, required this.selectHandler}) : super(key: key);
  final VoidCallback selectHandler ;
  //final String answerText;
  final Function counter ;
  int count = 0  ;
  int headcount = 0 ;

  bbutton(this.selectHandler , this.headcount, this.count, {super.key, required this.counter}) ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: selectHandler ,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.greenAccent,
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
      child: const Text("INCREASE COUNTER"),
    );
  }
}
