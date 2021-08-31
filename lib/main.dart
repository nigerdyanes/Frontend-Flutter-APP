import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project_geolocalization/src/pages/groups/groupListPage.dart';
import 'package:project_geolocalization/src/pages/groups/navigationBarTest.dart';
import 'package:project_geolocalization/src/pages/incidentPage.dart';
import 'package:project_geolocalization/src/pages/loginPage.dart';
import 'package:project_geolocalization/src/pages/mapPage.dart';
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
      darkTheme: ThemeData
      (
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF000000),
        accentColor: Color(0xFF000000),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      
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
        return MaterialPageRoute (builder: (BuildContext context) => GroupListPage());
 
      },

    );
  }
}

