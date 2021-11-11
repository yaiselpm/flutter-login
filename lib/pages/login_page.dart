import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _nombre= '';
  String _email='';
  String _pass='';
  Color co=Color(0xffFFFFFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff9F79EE),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Container(      
          decoration: BoxDecoration(
            color: co,
            border: Border.all(color: co, width: 1.0),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
            ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              //mainAxisSize: MainAxisSize.max, 
              children: [
                
                IconButton(
                  iconSize: 30,
                  color: Color(0xff9F79EE),
                  alignment: AlignmentDirectional.topStart,
                  padding: EdgeInsets.only(top: 0, left: 20),
                  onPressed: ()
                  {
                    Navigator.pushNamed(context, '/');
                  },
                  icon: Icon(Icons.cancel_outlined), 
                ),
                Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: CircleAvatar(
                    child: Text('login'.toUpperCase(),
                    style: TextStyle(fontSize: 55.5, fontWeight: FontWeight.bold, color: Color(0xffFFFFFF) ),),
                    radius: 80, backgroundColor: Color(0xff9F79EE),),
              ),
        
                _crearEmail(),
                Divider(color: co,),
                _crearPassword(),
                 Padding(
                   padding: EdgeInsets.only(top: 58.0),
                    child: RaisedButton(color: Color(0xff9F79EE),onPressed: (){Navigator.pushNamed(context, 'login');}, 
                      child: Text('Login'.toUpperCase(),style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF)), ), 
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)  
                      ), padding: EdgeInsets.symmetric(vertical: 16),   
                    ),
                ),
            ],
            ),
          ),
        ),
      ),
    );
  }

  
 Widget _crearPersona() 
 {
   return ListTile(
     title: Text('Nombre es: $_nombre'),
     subtitle: Text('data $_email'),
   );
 }

  _crearEmail() 
  {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border:  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        //counter: Text('Letras ${_email.length}'),
        hintText: 'Email'.toUpperCase(),
        labelText: 'Email'.toUpperCase(),
        hintStyle: TextStyle(color: Color(0xff9F79EE)),
        labelStyle: TextStyle(color: Color(0xff9F79EE)),
        //helperText: 'Escriba el Email',
        prefixIcon: Icon(Icons.mail_outlined, color: Color(0xff9F79EE),)  
      ),
      onChanged: (val)
      {
        setState(() 
        {
          _email=val;          
        });
        
      }
    );
  }

  Widget _crearPassword() 
  {
    return TextField(
      obscureText: true,
      textCapitalization: TextCapitalization.sentences,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border:  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),        
        hintText: 'Password'.toUpperCase(),
        labelText: 'Password'.toUpperCase(),
        hintStyle: TextStyle(color: Color(0xff9F79EE)),
        labelStyle: TextStyle(color: Color(0xff9F79EE)),
        //helperText: 'Escriba el Pass',
        prefixIcon: Icon(Icons.lock_outline_rounded,color: Color(0xff9F79EE),), 
        
      
    )
    );
  }
}