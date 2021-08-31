import 'package:flutter/material.dart';
import 'package:project_geolocalization/src/utils/theme.dart';

class GroupPage extends StatefulWidget {
  GroupPage({Key key}) : super(key: key);

  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: 
          [
            Image(image: AssetImage('assets/logo1.png'), height: 87,),
            SizedBox(height: AppTheme.getHeight(context)*0.08,),
            Text("Grupo", style: TextStyle(color: thirdColor, fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: AppTheme.getHeight(context)*0.08,),
            Row
            (
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
              [
                _createJoinGroupButton(),
                SizedBox(width: AppTheme.getWidth(context)*0.08),
                _createCreateGroupButton()
              ],
            )

          ],
        ),
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

  Widget _createCreateGroupButton()
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
        "Crear", 
        style: TextStyle
        (
          color: Colors.white,
          // fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}