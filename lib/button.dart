import 'main.dart';
import "package:flutter/material.dart";


class bbutton extends StatelessWidget {
  //const bbutton({Key? key, required this.selectHandler}) : super(key: key);
  final VoidCallback selectHandler ;

  const bbutton(this.selectHandler, {super.key}) ;




  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: selectHandler ,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.greenAccent,
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        child: const Text("INCREASE COUNTER"),
      ),
    );
  }
}
