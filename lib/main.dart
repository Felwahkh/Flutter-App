

import 'package:flutter/material.dart';
import 'package:flutter_application_finalproject/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: firstPage(),);
  }
}
class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: HomePage.thebackgroundColors,
    appBar: AppBar(actions: [Padding(padding: EdgeInsets.only(bottom: 150)
    ,child:Container( child: TextButton(onPressed: (){
     setState(() {
        if(HomePage.appBarAndContaner == Colors.blueGrey && HomePage.textcolor==Colors.black && HomePage.thebackgroundColors==Colors.white){
          HomePage.appBarAndContaner=Colors.black;
          HomePage.textcolor=Colors.white;
          HomePage.thebackgroundColors=Color.fromARGB(127, 223, 219, 219);
        }else{
        HomePage.appBarAndContaner=Colors.blueGrey;
        HomePage.textcolor==Colors.black;
         HomePage.thebackgroundColors=Colors.white;
        }
     });
      },child: Text("Dark Mode")),) ,)],toolbarHeight: 200,backgroundColor: HomePage.appBarAndContaner,flexibleSpace:
     Center( child: Text("  Welcome ",
    style:  TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 50,))),
       )
       ,body: ListView(children:  [
      Center(child:Padding(padding: EdgeInsets.only(top: 100),child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: HomePage.appBarAndContaner)),
      child: Text("Are You Ready To Explore More About Programming Languages? ",textAlign:TextAlign.center,style:  TextStyle(fontSize: 30,))),) ),
      Center(child:   Padding(padding: EdgeInsets.only(top:70),
      child: ElevatedButton(style: ElevatedButton.styleFrom(
        primary:  HomePage.appBarAndContaner,onPrimary: HomePage.textcolor),
  onPressed:(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
  } ,  child:Text("Lets Start"),
),))
 
    ],),);
  }
} 