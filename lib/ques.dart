import "package:flutter/material.dart";



class Header extends StatelessWidget {

  var headerText ;

   Header(this.headerText) ;

  @override
  Widget build(BuildContext context) {
    return  Text(headerText,
        style: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w900,
          wordSpacing: 4,
          decoration: TextDecoration.none,
          fontSize: 30,
        )
    );
  }
}
