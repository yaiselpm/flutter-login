import 'package:flutter/material.dart';
import 'package:pets_app/pages/authentication_page.dart';
import 'package:pets_app/pages/header_page.dart';
//import 'package:pets_app/pages/login_page.dart';


class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(color: Color(0xffFFFFFF),
      child: Stack(
        children: [
        HeaderCurvo(), 
        AuthenticationPage(),
        //LoginPage()
      ],
      ),
    );
      
      
    
  }
}
