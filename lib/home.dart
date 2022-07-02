

import 'package:flutter/material.dart';
import 'package:flutter_application_finalproject/secondPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
static Color appBarAndContaner= Colors.blueGrey;
static Color textcolor=Colors.black;
static Color iconButton=Colors.grey;
static Color thebackgroundColors=Colors.white;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: HomePage.thebackgroundColors ,appBar: AppBar(
   flexibleSpace:
     Center( child: Text("programming languages",
    style:  TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 25,))),
      backgroundColor: HomePage.appBarAndContaner,),
      body:ListView(children: [
      Column(children: theData.map((e) => GestureDetector(child: 
      Container(decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),border: Border.all(color: HomePage.appBarAndContaner)),
      margin: EdgeInsets.all(20),width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Center(child: Text(e["Title"].toString(),style:TextStyle(fontSize: 30,color:Colors.black ))),
          Image.asset(e["img"].toString(),alignment: Alignment.topLeft, width: 150 , ),
          IconButton(onPressed: (){
         setState(() {
       if(e["icon"] == 1){
       e["icon"] = 0;
     }else{
      e["icon"] = 1;
};

     
      });}, icon: Icon(Icons.favorite,color: e["icon"] == 0 ?  Colors.red : HomePage.iconButton,)), 
          ],
        ),
      ),
onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> secondPage(data: e,)));
},
      )).toList()
      ,)
      ]
      ),
      );
  }
}
List theData=[
{"Title":"Flutter","Example":"print(\"Hello World\");","discr":"Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.","img":"forimg/remo.png","icon":1,"link":"https://satr.codes/courses/tbKEOEzUGW/view","dark":1},
{"Title":"Java","Example":"System.out.print(\"Hello World\");","discr":"Java is a widely used object-oriented programming language and software platform that runs on billions of devices, including notebook computers, mobile devices, gaming consoles, medical devices and many others","img":"forimg/javaremo.png","icon":1,"link":"https://www.udemy.com/course/otdejbua/","dark":1},
{"Title":"Python","Example":"print(\"Hello World\")","discr":"Python has a simple syntax similar to the English language. Python has syntax that allows developers to write programs with fewer lines than some other programming languages. Python runs on an interpreter system, meaning that code can be executed as soon as it is written. This means that prototyping can be very quick.","img":"forimg/pathonewmo.png","icon":1,"link":"https://satr.codes/courses/rRUQyVDkwQ/view","dark":1},
{"Title":"Swift","Example":"print(\"Hello World\")","discr":"Swift is a programming language created by Apple for building apps for iOS, Mac, Apple TV, and Apple Watch. It's designed to give developers more freedom than ever. Swift is easy to use and open source, so anyone with an idea can create something incredible.","img":"forimg/swiremo.png","icon":1,"link":"https://satr.codes/courses/tbKEOEzUGW/view","dark":1},
{"Title":"C++","Example":"cout<<\"Hello World\"","discr":"C++ is a powerful general-purpose programming language. It can be used to develop operating systems, browsers, games, and so on. C++ supports different ways of programming like procedural, object-oriented, functional, and so on.","img":"forimg/cremo.png","icon":1,"link":"https://youtu.be/LnmBBRcWyg4","dark":1}];
