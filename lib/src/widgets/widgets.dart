import 'package:flutter/material.dart';
import 'package:project_geolocalization/src/utils/theme.dart';
class Widgets
{
  static Widget createAppBar(String text)
  {
    return AppBar
    (
      title: Text(text, style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
      brightness: Brightness.dark,
      backgroundColor: accentColor2,
      iconTheme: IconThemeData(color: thirdColor),
      shape: RoundedRectangleBorder
      (
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(35)),
      ),
    );
  }

  static Widget createDrawer(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(bottom: AppTheme.getHeight(context)*0.55, left: 250),
      child: Drawer
          (
            elevation: 20,
            child: Container
            (
              color: accentColor2,
              child: SafeArea(
                child: Column
                (
                  
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: 
                  [
                    GestureDetector
                    (
                      child: Text
                      (
                        "Grupos", 
                        style: TextStyle(color:primaryColor), 
                        textAlign: TextAlign.center
                      )
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 30), child: Divider(color: thirdColor, thickness: 1)),
                    SizedBox(height: 15),

                    GestureDetector
                    (
                      child: Text
                      (
                        "Unirse", 
                        style: TextStyle(color:primaryColor), 
                        textAlign: TextAlign.center
                      )
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 30), child: Divider(color: thirdColor, thickness: 1)),
                    SizedBox(height: 15),

                    GestureDetector
                    (
                      child: Text
                      (
                        "Crear", 
                        style: TextStyle(color:primaryColor), 
                        textAlign: TextAlign.center
                      )
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 30), child: Divider(color: thirdColor, thickness: 1)),
                    SizedBox(height: AppTheme.getHeight(context)*0.15),

                   GestureDetector
                    (
                      child: Text
                      (
                        "Cerrar Sesión", 
                        style: TextStyle(color:primaryColor), 
                        textAlign: TextAlign.center
                      )
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 30), child: Divider(color: thirdColor, thickness: 1)),
                    SizedBox(height: 15),

                   
                  
                      
                  ],
                ),
              ),
            ),
          ),
    );
  }
  

  static Widget createScaffold(Widget appBar, Widget drawer, Widget childWidget, Color backGroundColor, BuildContext context)
  {
    return Scaffold
    (
      appBar: appBar,
      endDrawer: drawer,
      backgroundColor: accentColor,
      body: Container
      (
        decoration: BoxDecoration
        (
          color: backGroundColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))
        ),
        height: AppTheme.getHeight(context)-AppTheme.getHeight(context)*0.135,
        child: childWidget,
      ),
      floatingActionButton: FloatingActionButton
      (
        
        backgroundColor: thirdColor,
        onPressed: (){},
        child: Icon(Icons.account_balance_sharp),
        
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
    
}