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

  void showSnack(BuildContext context, String msg){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter"),),
      body: Center(
        child: Column(
          children: [

            ElevatedButton(
                onPressed: (){
                  showSnack(context, "This is Eleveted Button");
                  },
                child: Text("Click Me")),

            SizedBox(height: 20,),

            OutlinedButton(
                onPressed: (){
                  showSnack(context, "This is Outlined Button");
                  },
                child: Text("Click Me")),

            SizedBox(height: 20,),

            TextButton(
                onPressed: (){
                  showSnack(context, "This is Text Button");
                  },
                child: Text("Click Me")),

            SizedBox(height: 20,),
            
            IconButton(
                onPressed: (){
                  showSnack(context, "This is Icon Button");
                  },
                icon: Icon(Icons.ac_unit_outlined))
          ],
        ),
      ),
    );
  }
  
}