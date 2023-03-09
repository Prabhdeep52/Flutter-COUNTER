
import "package:flutter/material.dart";
import "package:prabh/button.dart";

import "./ques.dart";

   void main() => runApp(const MaterialApp(
      home: Myapp(),
   ));

   class Myapp extends StatefulWidget {
  const Myapp({super.key});

       @override

    State<StatefulWidget> createState() {
    return MyappState();
  }
   }

   class MyappState extends State<Myapp> {
     var count = 0;
     var headcount = 0 ;

     void counter() {
       setState(() {
         count++ ; 
       });
     }
     void resetCounter() {
       setState(() {
         count = 0  ;
       });
     }

     void headCounter() {
       setState(() {
        headcount++;
       });
     }
     void reseteverything(){
       setState(() {
         headcount = 0 ;
       });
     }


  @override
  Widget build(BuildContext context) {
       var headerr = [
         "this is head 1" ,
         "this is head 2" ,
         "Count is $count"
       ];



    return Scaffold(
      appBar: AppBar (
        title:  const Text("header"),
        shape: const Border(bottom: BorderSide(style: BorderStyle.solid)),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
           Align(
            alignment: Alignment.center,
            child: Header(
              headerr[headcount],//created custom widget called "headerr" . whose stylling is being done in ques.dart
            ),
          ),
          bbutton(counter),
           ElevatedButton(
            onPressed: resetCounter ,
             style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.greenAccent,
                 textStyle: const TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                 )),
            child: const Text("RESET COUNTER"),
          ),
          ElevatedButton(
            onPressed: reseteverything ,
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            child: const Text("RESET EVERYTHING"),
          ),
          Container(
          color: Colors.white, // To see the difference between the image's original size and the frame
          height: 300,
          width: 200,

          // Uploading the Image from Assets
          child: const Image(
            image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            alignment: Alignment.center,
          )
          ),
],
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: headCounter,
        backgroundColor: Colors.greenAccent,
        child: const Text(
          "PRESS",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
