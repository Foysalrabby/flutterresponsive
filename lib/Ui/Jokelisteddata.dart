import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterresponsive/Model/Jokemodel.dart';

class Jokelisteddata extends StatelessWidget{
  final ValueChanged<Jokemodel> jokeSelectedcallback;
  final Jokemodel selectedata;
  Jokelisteddata({required this.jokeSelectedcallback,required this.selectedata });
  @override
  Widget build(BuildContext context) {
   return  ListView(
     children: jokeModel.map((joke) {
       return Container(
         child: ListTile(
           title: Text(joke.setup),
           onTap: ()=>jokeSelectedcallback(joke),
           selected: selectedata == joke,
         ),
       );
     }).toList(),
   );
  }

}