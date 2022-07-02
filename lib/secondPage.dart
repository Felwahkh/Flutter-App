


import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_application_finalproject/home.dart';
import 'package:url_launcher/link.dart';



class secondPage extends StatelessWidget {
  secondPage({Key? key,required this.data}) : super(key: key);
Map data ={};


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: HomePage.thebackgroundColors,
    appBar: AppBar(backgroundColor: HomePage.appBarAndContaner ,),
    body: ListView(children: [Image.asset(data["img"].toString(),height: 150,width: 20,alignment: Alignment.center),
    Text("What is "+data["Title"].toString()+ " ?\n",style: TextStyle(decoration: TextDecoration.underline,fontSize: 20),textAlign: TextAlign.center,),
    Container(color: HomePage.appBarAndContaner,child: Text(data["discr"].toString(),style:TextStyle(color: HomePage.textcolor,fontSize: 17),textAlign: TextAlign.center,) ,
    ),Text("\nExample of a Print Statement :",style: TextStyle(decoration: TextDecoration.underline,fontSize: 20),
    textAlign: TextAlign.center,),Padding(padding: EdgeInsets.all(10),

    child: Container(decoration: BoxDecoration( borderRadius: BorderRadius.circular(100),
    border: Border.all(color: HomePage.appBarAndContaner)),
    margin: EdgeInsets.all(20),width: 300,
    child: Text(data["Example"].toString(),textAlign: TextAlign.center),))
    ,Padding(padding: EdgeInsets.only(top: 20,bottom: 20),child: Text("If You Want To Start Your Journy With "+data["Title"].toString()+" Click on the Link",style: TextStyle(decoration: TextDecoration.underline,),textAlign: TextAlign.center)),
   Link(uri: Uri.parse(data["link"].toString())
   ,builder:(context, followLink){
    return ElevatedButton(style: ElevatedButton.styleFrom(
        primary: Colors.white ,onPrimary: Colors.blue),onPressed: followLink , child: Text("Go to link"));
   } ),
Center(child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white,onPrimary: Colors.black),
  onPressed:(){
    Navigator.pop(context);
  } ,  child:Icon(Icons.arrow_back),
),)
    ],
    ),
    );
  }
}



/*

new Center(
          child: new InkWell(
              child: new Text('Open Browser'),
              onTap: () => launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
          ),
*/

// "link"



