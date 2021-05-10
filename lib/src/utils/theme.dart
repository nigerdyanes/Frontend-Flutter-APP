import 'package:flutter/material.dart';

const Color primaryColor = Colors.white;
const Color accentColor = Color(0xfff2B185B); // MORADO MAS OSCURO


// const Color thirdColor = Color(0xfffFF600D); // NARANJA MAS CLARO

const Color thirdColor = Color(0xfffE3560C);  //NARAJA MAS OSCURO PRUEBA

class AppTheme
{
  static double getHeight(context)
  {
    return MediaQuery.of(context).size.height;
  }

  static double getWidth(context)
  {
    return MediaQuery.of(context).size.width;
  }
}