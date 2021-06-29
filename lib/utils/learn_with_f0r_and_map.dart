import 'package:flutter/material.dart';
class Example extends StatelessWidget {
   var list = ["first", 'second'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //this with for loop
        // children: [
        //   for(var i in list) Text(i.toString()),
        // ],
        children:
          list.map((e) => Text(e)).toList(),

      ),
    );
  }
}
