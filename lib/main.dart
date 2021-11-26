import 'package:flutter/material.dart';
import 'package:pets_app/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [   
   GlobalMaterialLocalizations.delegate,
   GlobalWidgetsLocalizations.delegate,
 ],
 supportedLocales: [
    const Locale('en', 'US'), // Inglés
    const Locale('es', 'ES'), // Español    
  ],
      debugShowCheckedModeBanner: false,      
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      /* onGenerateRoute: (settings){
        print('Ruta Llamada: $settings');
        return MaterialPageRoute(builder: (context)=> LoginPage()
      
    );
  }, */
      
      );
  }
}
