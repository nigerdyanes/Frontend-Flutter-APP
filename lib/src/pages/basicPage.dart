import 'package:flutter/material.dart';

class BasicPage extends StatefulWidget {
  BasicPage({Key key}) : super(key: key);

  @override
  _BasicPageState createState() => _BasicPageState();
}
  
class _BasicPageState extends State<BasicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: SafeArea(
        child: Center
        (
          child: Text("BASIC PAGE"),
        ),
      )
    );
  }
}