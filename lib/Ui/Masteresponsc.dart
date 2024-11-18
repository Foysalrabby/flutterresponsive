import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterresponsive/Model/Jokemodel.dart';
import 'package:flutterresponsive/Ui/Jokedetails.dart';
import 'package:flutterresponsive/Ui/Jokelisteddata.dart';

class Masterresponssc extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Extendmastersc();
  }

}
class Extendmastersc extends State<Masterresponssc>{
  static const  int Tablebreakoutpoint=600;
  Jokemodel? selectedata;
   Widget buildmobilelayout(){
            return Jokelisteddata(jokeSelectedcallback: (jokeselected){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return Jokedetails(Intabletlayout: false, joke: jokeselected);
              }),);
            } ,selectedata: selectedata);
   }
 Widget buildTablelayout(){
     return Row(
       children: [
         Flexible(
           flex: 1,
           child: Material(
             elevation: 13.0,
             child: Jokelisteddata(jokeSelectedcallback: (jokes) {
                  setState(() {
                    selectedata = jokes;
                  });
             },selectedata: selectedata ),
           ),
         ),
         Flexible(
           flex: 3,
             child: Jokedetails(Intabletlayout: true,joke: selectedata,) ),

       ],
     );
 }
  @override
  Widget build(BuildContext context) {
     Widget content;
     var shortestside=MediaQuery.of(context).size.shortestSide;
     var orientation=MediaQuery.of(context).orientation;
     if(orientation==Orientation.portrait && shortestside < Tablebreakoutpoint){
       content=buildmobilelayout();
     }
     else{
       content=buildTablelayout();
     }


   return Scaffold(
     appBar: AppBar(
       title: Text("Responsivesc"),
       backgroundColor: Theme.of(context).colorScheme.outlineVariant,
     ),
     body: content,

   );
  }

}