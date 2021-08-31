import 'package:flutter/material.dart';
import 'package:project_geolocalization/src/utils/theme.dart';
import 'package:project_geolocalization/src/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      resizeToAvoidBottomInset: true,
      body: Padding
      (
        padding: const EdgeInsets.symmetric(horizontal:40, vertical: 50),
        child: 
        SingleChildScrollView
        (
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: 
            [
              SizedBox(height: AppTheme.getHeight(context) * 0.07,),

              Image(image: AssetImage('assets/logo1.png'), height: 100,),
              
              SizedBox(height: AppTheme.getHeight(context) * 0.1,),

              Text("Hola \nBienvenido!", style: TextStyle(color: thirdColor, fontSize: 30, fontWeight: FontWeight.w900)),

              SizedBox(height: AppTheme.getHeight(context) * 0.06,),

              _createUserFormField(),

              SizedBox(height: AppTheme.getHeight(context) * 0.02,),

              _createPasswordFormField(),

              SizedBox(height: AppTheme.getHeight(context) * 0.08,),
              
              _createLoginButton()
              
            ],
          ),
        ),
      ),
    );
  }


  Widget _createUserFormField()
  {
    return TextFormField
    (
      cursorColor: accentColor,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration
        (
          labelText: "Usuario",
          labelStyle: TextStyle(color: accentColor),

          border: UnderlineInputBorder
          (
            borderSide: BorderSide(color: accentColor),
          ),
          enabledBorder: UnderlineInputBorder
          (
            borderSide: BorderSide(color: accentColor),
            
          ),
          focusedBorder: UnderlineInputBorder
          (
            borderSide: BorderSide(color: accentColor),
            borderRadius: BorderRadius.circular(4)
          ),
        ),  
    );
  }

  Widget _createPasswordFormField()
  {
    return TextFormField
    (
      cursorColor: accentColor,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration
        (
          labelText: "Contraseña",
          labelStyle: TextStyle(color: accentColor),

          border: UnderlineInputBorder
          (
            borderSide: BorderSide(color: accentColor),
          ),
          enabledBorder: UnderlineInputBorder
          (
            borderSide: BorderSide(color: accentColor),
            
          ),
          focusedBorder: UnderlineInputBorder
          (
            borderSide: BorderSide(color: accentColor),
            borderRadius: BorderRadius.circular(4)
          ),
        ),
        obscureText: true,  
    );
  }

  Widget _createLoginButton() 
  {
    return Row
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        MaterialButton
        (
          onPressed: (){},
          color:  accentColor,
          height: 50,
          elevation: 10,
          // focusElevation: 100,
          shape: RoundedRectangleBorder
          (
            borderRadius: BorderRadius.circular(10),
            // side: BorderSide(color: Colors.black, width: 3),
          ),
          child: Text
          (
            "Iniciar Sesión", 
            style: TextStyle
            (
              color: Colors.white,
              // fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}

