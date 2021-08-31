import 'package:flutter/material.dart';
import 'package:project_geolocalization/src/utils/theme.dart';
import 'package:project_geolocalization/src/widgets/widgets.dart';

class GroupListPage extends StatefulWidget {
  GroupListPage({Key key}) : super(key: key);

  @override
  _GroupListPageState createState() => _GroupListPageState();
}
List<Color> listaColores = [Colors.red, Colors.blue, Colors.black, Colors.green];
class _GroupListPageState extends State<GroupListPage> {
  @override
  Widget build(BuildContext context) {
    
    return Widgets.createScaffold
    (
      Widgets.createAppBar("Grupos"), 
      Widgets.createDrawer(context), 
      _createGroupList(), 
      Color(0xffF2F2F2),
      context
    );
    
  }

  Widget _createGroupList() 
  {
    return ListView.builder
    (
      itemCount: 4,
      itemBuilder: (context, index)
      {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical:10),
          child: Container
          (
            decoration: BoxDecoration
            (
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            // height: AppTheme.getHeight(context)*0.1,
            child: Column
              (
                
                children: 
                [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row
                    (
                      children: 
                      [
                        CircleAvatar(backgroundColor: listaColores[index], minRadius: 30,),
                        Flexible
                        (
                          child: ListTile
                          (
                            title: Text("Grupo $index", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                            subtitle: Text("$index integrantes", style: TextStyle(color: Colors.black, fontSize: 15)),
                            
                          )
                        )
                      ],
                    ),
                  ),
                  Row
                  (
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: 
                    [
                      GestureDetector
                      (
                        child: Padding(
                          padding: const EdgeInsets.only(bottom:10.0, right: 10.0),
                          child: Text("Salir del Grupo", style: TextStyle(color: thirdColor, fontWeight: FontWeight.bold),),
                        ),
                      )
                    ],
                  )
                ],

              ),
          ),
        );
      }
    );
  }
}