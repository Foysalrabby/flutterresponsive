import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Masterresponssc extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Extendmastersc();
  }

}
class Extendmastersc extends State<Masterresponssc>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Responsivesc"),
       backgroundColor: Theme.of(context).colorScheme.outlineVariant,
     ),
     body: Container(
       child: Text("Responsive layout"),
     ),

   );
  }

}