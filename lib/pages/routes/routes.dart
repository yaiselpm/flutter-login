import 'package:flutter/material.dart';
import 'package:pets_app/pages/home_page.dart';
import 'package:pets_app/pages/login_page.dart';
import 'package:pets_app/pages/register_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){

return <String, WidgetBuilder>{
     '/' : (BuildContext context)=>HomePage(),
     'login' : (BuildContext context)=>LoginPage(),
     'register' : (BuildContext context)=>RegisterPage(),
     
  };
}