import'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar:AppBar(
          leading:Icon(Icons.menu),
          title:Text('Facebook'),
          centerTitle:true,
          backgroundColor: Colors.redAccent,

          actions:[
            Text('data'),
            SizedBox(width:15),
            Icon(Icons.home_outlined)

          ]
        )
      )
    );
  }
}
