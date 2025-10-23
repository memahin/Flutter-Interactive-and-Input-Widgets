import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{

  void showSnack(BuildContext context,String msg){

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter"),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){}, child: Text("Click Me"))
          ],
        ),
      ),
    );
  }
  
}