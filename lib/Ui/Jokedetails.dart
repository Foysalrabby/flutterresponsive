
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterresponsive/Model/Jokemodel.dart';

class Jokedetails extends StatelessWidget{
  final bool Intabletlayout;
   Jokemodel? joke;
  Jokedetails({required this.Intabletlayout,required this.joke});
  @override
  Widget build(BuildContext context) {
    final  TextTheme textTheme=Theme.of(context).textTheme;
    final Widget content=Column(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(joke?.setup ?? 'no joke selected',style: textTheme.headlineMedium),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(joke?.punchline ?? 'please selected in left', style: textTheme.headlineSmall,),
        )
      ],
    );

    if (Intabletlayout){
      return Center(child: content,);
    }
   return Scaffold(
     appBar: AppBar(
       title: Text(joke?.type ??"no joke seleted"),
       backgroundColor: Colors.purpleAccent,
     ),
     body: Container(
       child: content,
     ),
   );
  }


}