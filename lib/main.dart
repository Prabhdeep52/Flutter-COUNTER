
import "package:flutter/material.dart";


import "options.dart";

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

     void _counter() {
       setState(() {
         count++ ; 
       });
     }
     void _resetCounter() {
       setState(() {
         count = 0  ;
       });
     }

     void _headCounter() {
       setState(() {
        headcount++;
       });
     }
     void _reseteverything(){
       setState(() {
         headcount = 0 ;
       });
     }


  @override
  Widget build(BuildContext context) {
       var _headerr = [
         "this is heading 1 ",
         "this is heading 2 " ,
         "count is $count" ,
       ];



    return Scaffold (
      appBar:   AppBar (
        title:  const Text("header"),
        shape: const Border(bottom: BorderSide(style: BorderStyle.solid)),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: headcount < 3 ? options(
          counter : _counter,
        headerr : _headerr ,
        headCounter: _headCounter, headcount: headcount,
        resetCounter: _resetCounter,
        ) : Column(
              children: const [
                Text("finished")],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _headCounter,
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
