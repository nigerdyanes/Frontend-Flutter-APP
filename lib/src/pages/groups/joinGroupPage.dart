import 'package:flutter/material.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:project_geolocalization/src/utils/theme.dart';

class JoinGroup extends StatefulWidget {
  JoinGroup({Key key}) : super(key: key);

  @override
  _JoinGroupState createState() => _JoinGroupState();
}

class _JoinGroupState extends State<JoinGroup> {
  Color currentColor  = Colors.black;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold
    (
      body: Center(
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: 
          [
            GestureDetector
            (
              onTap: () => _showDialog(),
              child: Container
              (
                width: 80,
                height: 80,
                decoration: BoxDecoration
                (
                  shape: BoxShape.circle,
                  color: currentColor
                ),
              ),
            ),
            SizedBox(height: AppTheme.getHeight(context)*0.05,),
            _createGroupNameField(),
            SizedBox(height: AppTheme.getHeight(context)*0.03,),
            _createPasswordGroupField(),
            SizedBox(height: AppTheme.getHeight(context)*0.05,),
            _createJoinGroupButton()
            

          ],
        ),
      )
    );
  }

  Widget _createGroupNameField()
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextFormField
      (
        cursorColor: accentColor,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration
          (
            labelText: "Nombre del Grupo",
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
      ),
    );
  }

  Widget _createPasswordGroupField()
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextFormField
      (
        cursorColor: accentColor,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration
          (
            labelText: "Contraseña del Grupo",
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
      ),
    );
  }

  Widget _createJoinGroupButton()
  {
    return MaterialButton
    (
      onPressed: (){},
      color:  accentColor,
      
      elevation: 10,
      // focusElevation: 100,
      shape: RoundedRectangleBorder
      (
        borderRadius: BorderRadius.circular(10),
        // side: BorderSide(color: Colors.black, width: 3),
      ),
      child: Text
      ( 
        "Unirme", 
        style: TextStyle
        (
          color: Colors.white,
          // fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  void changeColor(Color color)
  {
    setState(() {
      currentColor= color;
      // Navigator.pop(context);
    });
  }
  
  
  void _showDialog() 
  {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) 
      {
        
        return AlertDialog
        (
          title: const Text('Selecciona un color para el grupo'),
          content: SingleChildScrollView
          (
            child: 
            (
              ColorPicker
              (
                pickerColor: currentColor,
                onColorChanged: changeColor,
                labelTextStyle: TextStyle(color: Colors.white),
                showLabel: false,
                enableAlpha: false,
              )
            ),

          ),
          actions: 
          [
            MaterialButton
            (
              onPressed: () 
              {
                setState(() => currentColor = currentColor);
                Navigator.of(context).pop();
              },
              child: Text("Confirmar"),
            )
          ],
          
        );
      },
    );   
  }
}

