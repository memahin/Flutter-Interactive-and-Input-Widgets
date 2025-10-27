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
                icon: Icon(Icons.ac_unit_outlined)),

            SizedBox(height: 20,),

            InkWell(
              onDoubleTap: (){
                showSnack(context, "Double Tap");
              },
              onLongPress: (){
                showSnack(context, "Long Press");
              },
              child: IconButton(onPressed: (){}, icon: Icon(Icons.accessibility)),
            ),

            SizedBox(height: 20,),

            TextFormField(
              decoration: InputDecoration(labelText: "Enter Your Name"),
              onFieldSubmitted: (value){
                showSnack(context, value);
              }
            ),

            SizedBox(height: 20,),

            DropdownButton(
              hint: Text("Choose City Name"),
                items: [
                  DropdownMenuItem(value: "Dhaka", child: Text("Dhaka")),
                  DropdownMenuItem(value: "Rajshahi", child: Text("Rajshahi")),
                  DropdownMenuItem(value: "Khulna", child: Text("Khulna")),
                ],
              onChanged: (value){
                  showSnack(context, value.toString());
              }
            ),

            SizedBox(height: 20,),

            CheckboxListTile(
              title: Text("This is Checkbox"),
              value: true,
              onChanged: (value){
                if(value == true){
                  showSnack(context, "Checked");
                }else{
                  showSnack(context, "Unchecked");
                }
              },
            ),

            SizedBox(height: 20,),

            SwitchListTile(
              title: Text("This is Checkbox"),
              value: true,
              onChanged: (value){
                if(value == true){
                  showSnack(context, "Checked");
                }else{
                  showSnack(context, "Unchecked");
                }
              },
            ),

            SizedBox(height: 20,),

            Slider(
              value: 50,
              min: 0,
              max: 100,
              divisions: 10,
              onChanged: (value){
                showSnack(context, value.toString());
              },
            ),
          ],
        ),
      ),
    );
  }

}