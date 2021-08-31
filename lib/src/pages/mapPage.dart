import 'package:flutter/material.dart';
import 'package:project_geolocalization/src/utils/theme.dart';
import 'package:project_geolocalization/src/widgets/widgets.dart';

class MapPage extends StatefulWidget {
  MapPage({Key key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold
    (
      appBar: Widgets.createAppBar("Mapa"),
      endDrawer: Widgets.createDrawer(context),

      
      
    );
  }
}