import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project_geolocalization/src/pages/basicPage.dart';
import 'package:project_geolocalization/src/pages/loginPage.dart';
import 'package:project_geolocalization/src/pages/splashPage.dart';

void main() 
  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp
    (
      theme: ThemeData(fontFamily: 'Roboto'),
      
      //IDIOMAS
      localizationsDelegates: 
      [    
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

    supportedLocales: 
    [
      const Locale('en', 'US'), // English, no country code
      const Locale('es', 'CO')
      
    ],
      
      debugShowCheckedModeBanner: false,
      title: 'Proyecto Geolocalización',

      //ESTABLECER RUTAS
      initialRoute: '/',
      // routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings)
      {
        return MaterialPageRoute (builder: (BuildContext context) => LoginPage());
 
      },

    );
  }
}

