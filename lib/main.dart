import 'dart:math';
import 'package:flutter/material.dart';

void main() {
 return runApp(MyApp());}
 class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
 return  MaterialApp(
   debugShowCheckedModeBanner:false,
     home: Scaffold(
       appBar: AppBar(
         title: Text('Conan'),

         backgroundColor: Colors.deepPurple,
       ),
       body: DicePage(),
     ),
   );
}
}

class DicePage extends StatefulWidget {

   @override
   _DicePageState createState() => _DicePageState();
 }

 class _DicePageState extends State<DicePage> {
   int imageNumber=1;
   @override
   Widget build(BuildContext context) {
     return Column(
       children: <Widget>[

           Image.asset('images/conan$imageNumber.jpeg'),

             FlatButton(
               color:Colors.deepPurple,
               onPressed: (){setState(() {
               imageNumber=Random().nextInt(3)+1;
             }
             );
             },
             ),

       ],
     );
   }
 }

