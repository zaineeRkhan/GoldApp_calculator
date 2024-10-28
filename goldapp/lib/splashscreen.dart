import 'package:flutter/material.dart';
import 'package:goldapp/newgoldapp.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds:4),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>goldapp()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      body: Center(child: Column(mainAxisAlignment:MainAxisAlignment.center,
        children: [
        Image(image:AssetImage('lib/assets/money.png'),height: 100,),
          Container(padding: EdgeInsets.only(left: 20,top:4),
            margin: EdgeInsets.only(top:8),
            height: 40,
            width: 150,
            decoration: BoxDecoration(color: Colors.yellow.shade500,
              borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.brown.shade900,width:3),
          ),
            child: Text('Gold Totalizer',style: TextStyle(color: Colors.brown.shade500,fontWeight: FontWeight.bold,fontSize:15),),
      ),],),
      ), );
  }
}
