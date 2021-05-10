import 'package:flutter/material.dart';
import 'package:project_geolocalization/src/utils/theme.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: Center
      (

        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            Image(image: AssetImage('assets/logo.png')),
            SizedBox(height: AppTheme.getHeight(context)*0.02),
            Padding
            (
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Text("Esta aplicación está diseñada para bla bla bla ba bla bla bla bla bla bla bla bla bla bla bla bla", style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    );
  }
}