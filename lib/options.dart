import 'package:flutter/material.dart';



import 'ques.dart';


class options extends StatelessWidget {

   options({ required this.headcount, required this.headerr, required this.headCounter, required this.counter , required this.resetCounter}) : super();

  final List<String> headerr ;
final VoidCallback headCounter ;
final VoidCallback resetCounter ;
final VoidCallback counter ;
 int count = 0  ;
 int headcount  ;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:  [
        Align(
          alignment: Alignment.center,
          child: Header(
            headerr[headcount],//created custom widget called "headerr" . whose stylling is being done in ques.dart
          ),
        ),
        ElevatedButton(
          onPressed: counter ,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          child: const Text("INCREASE COUNT"),
        ),
        ElevatedButton(
          onPressed: counter ,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          child: const Text("INCREASE COUNT"),
        ),
        ElevatedButton(
          onPressed: resetCounter,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          child: const Text("RESET COUNT"),
        ),
        Container(
            color: Colors.white, // To see the difference between the image's original size and the frame
            height: 300,
            width: 200,

            // Uploading the Image from Assets
            child: const Image(
              image: NetworkImage('https://images.pexels.com/photos/10536106/pexels-photo-10536106.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              alignment: Alignment.center,
            )
        ),
      ],
    );
  }
}
