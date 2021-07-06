import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/login.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text("STUDENT LOGIN"),
        ),
        body: Login(),

      ),
    );
  }
}
