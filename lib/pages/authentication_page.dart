import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:pets_app/pages/login_page.dart';
//import 'package:pets_app/pages/register_page.dart';

class AuthenticationPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 50),
          child: CircleAvatar(
            child: Text('a'.toUpperCase(),
            style: TextStyle(fontSize: 150, fontWeight: FontWeight.bold,  ),),
            radius: 80, backgroundColor: Colors.white,)),
          Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 200, left: 180),
          child: CircleAvatar(radius: 40, backgroundColor: Colors.white,)),
          Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 300, left: 80),
          child: CircleAvatar(radius: 10, backgroundColor: Colors.white,)),
        Center(
        widthFactor: 100,
        heightFactor: 50.0,
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            RaisedButton(onPressed: (){Navigator.pushNamed(context, 'login');}, 
            child: Text('Login'.toUpperCase(), style: TextStyle(fontSize: 20, ),), shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)  
            ), padding: EdgeInsets.symmetric(horizontal: 160, vertical: 10),textColor: Color(0xff8968CD)  ),
           Padding(padding: EdgeInsetsDirectional.all(8)),
            RaisedButton(onPressed: (){Navigator.pushNamed(context, 'register');}, 
            child: Text('Register'.toUpperCase(), style: TextStyle(fontSize: 20),), shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),padding: EdgeInsets.symmetric(horizontal: 140.0, vertical: 10),
            textColor: Color(0xffFFFFFF),color: Color(0xff8968CD),elevation: 5 ) ] 
          
          ),
        ),
      ]);
    
  }
}
