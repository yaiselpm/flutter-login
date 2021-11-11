import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _nombre= '';
  String _email='';
  String _pass='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9F79EE),
       body: Padding(
         padding: const EdgeInsets.only(top: 100.0),
         child: Container(
           decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            border: Border.all(color: Color(0xffFFFFFF), width: 1.0),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
            ),
           child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),        
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
                    child: Text('register'.toUpperCase(),
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xffFFFFFF) ),),
                    radius: 80, backgroundColor: Color(0xff9F79EE),),
              ),
              _crearInput(),
              Divider(color: Colors.white,),
              _crearEmail(),
              Divider(color: Colors.white,),
              _crearPassword(),
              Padding(
                   padding: EdgeInsets.only(top: 58.0),
                    child: RaisedButton(color: Color(0xff9F79EE),
                    onPressed: (){Navigator.pushNamed(context, 'register');}, 
                      child: Text('create account'.toUpperCase(), style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF))), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)  
                      ), 
                    padding: EdgeInsets.symmetric(vertical: 12)
                    ),
                ),
            ],
      ),
         ),
       ),
    );
  }

  Widget _crearInput() 
  {
    return TextField(
      style: TextStyle(color: Color(0xff9F79EE)),
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border:  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        hintText: 'display name'.toUpperCase(),
        labelText: 'display name'.toUpperCase(),
        hintStyle: TextStyle(color: Color(0xff9F79EE)),
        labelStyle: TextStyle(color: Color(0xff9F79EE)),
        prefixIcon: Icon(Icons.account_circle_outlined, color: Color(0xff9F79EE),), 
        
      ),
      onChanged: (valor)
      {
        setState(() 
        {
          _nombre=valor;          
        });
        
      }
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
      style: TextStyle(color: Color(0xff9F79EE)),
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
      style: TextStyle(color: Color(0xff9F79EE)),
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