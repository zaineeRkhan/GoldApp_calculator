import 'package:flutter/material.dart';
class gradientcolors extends StatelessWidget {
  const gradientcolors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('gradient colors',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body:Center(child:
      Stack(
        children:[Container(
        margin: EdgeInsets.all(20),
        height: 400,width:400,
      decoration: BoxDecoration(
        color: Colors.black,
        gradient: LinearGradient(colors: [Color(0xff1F1C18),Color(0xff8E0E00),],),
        border: Border.all(color:Colors.black,width: 3),
        ),
      ),
        Container(height: 300,width: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[Color(0xfffc00ff),Color(0xff00dbde),],),
          border: Border.all(color: Colors.black,width: 3),
        ),
          
        ),
          Container(
            height: 100,width: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xff2c3e50),Color(0xff3498db),],),
              border: Border.all(color: Colors.black,width: 3),
            ),
          )

       ],
    ),
      ), );
  }
}
