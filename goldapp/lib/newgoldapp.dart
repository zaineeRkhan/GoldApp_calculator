import 'package:flutter/material.dart';
import 'package:get/get.dart';
class goldapp extends StatefulWidget {
  const goldapp ({super.key});

  @override
  State<goldapp> createState() => _goldappState();
}

class _goldappState extends State<goldapp> {
  double totalPrice=0.0;
  TextEditingController tolaPriceController = TextEditingController();
  TextEditingController tolaQuantityController = TextEditingController();
  TextEditingController mashaQuantityController = TextEditingController();
  TextEditingController rattiQuantityController = TextEditingController();
  TextEditingController pointsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        title: Text('Gold Totalizer',style: TextStyle(color: Colors.yellow.shade500,fontWeight: FontWeight.bold,fontSize:20),),
        centerTitle: true,
        backgroundColor: Colors.brown.shade900,
      ),
      body:SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text('Enter Tola Price',style: TextStyle(color: Colors.brown.shade500,fontWeight: FontWeight.bold,fontSize:15),),
        Container(
          margin: EdgeInsets.all(5),
          height: 50,
          width: 300,
          decoration: BoxDecoration(color: Colors.brown.shade900,
            borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.yellow.shade500),),
          child: TextFormField(
            style: TextStyle(color: Colors.yellow.shade500),
            keyboardType: TextInputType.number,
            controller: tolaPriceController,
            decoration: InputDecoration(
              suffixText: 'Enter Tola Price',suffixStyle: TextStyle(color: Colors.yellow.shade500),
              prefixIcon: Icon(Icons.keyboard,color: Colors.yellow.shade500,),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.yellow.shade500,width:3),),

            ),

          ),
          
        ),
        Text('Enter Tola Quantity',style: TextStyle(color: Colors.brown.shade500,fontWeight: FontWeight.bold,fontSize: 15),),
        Container(
        margin: EdgeInsets.all(5),
          height: 50,
          width: 300,
          decoration: BoxDecoration(color: Colors.brown.shade900,
            borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.yellow.shade500),),
          child: TextFormField(
            style: TextStyle(color: Colors.yellow.shade500),
            keyboardType: TextInputType.number,
            controller: tolaQuantityController,
            decoration: InputDecoration(
              suffixText:'Enter Tola Quantity',suffixStyle: TextStyle(color: Colors.yellow.shade500),
              focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5),borderSide: BorderSide(color: Colors.yellow.shade500,width:3),),
              hintStyle: TextStyle(color: Colors.yellow.shade500),
              prefixIcon: Icon(Icons.keyboard,color: Colors.yellow.shade500,),
              border: InputBorder.none,
            ),
          ),
        ),
        Text('Enter Masha Quantity',style: TextStyle(color: Colors.brown.shade500,fontWeight: FontWeight.bold,fontSize: 15),),
        Container(
        margin: EdgeInsets.all(5),
         height: 50,
         width: 300,
         decoration: BoxDecoration(color: Colors.brown.shade900,
         borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.yellow.shade500),),
         child: TextFormField(
           style: TextStyle(color: Colors.yellow.shade500),
           keyboardType:TextInputType.number,
           controller: mashaQuantityController,
         decoration: InputDecoration(
           suffixText:'Enter Masha Quantity',suffixStyle: TextStyle(color: Colors.yellow.shade500),
           focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.yellow.shade500,width: 3),),
         prefixIcon: Icon(Icons.keyboard,color: Colors.yellow.shade500,),
         border: InputBorder.none,
    ),
         ),
        ),
        Text('Enter Ratti Quantity',style: TextStyle(color: Colors.brown.shade500,fontWeight: FontWeight.bold,fontSize: 15),),
        Container(
          margin: EdgeInsets.all(5),
          height: 50,
          width: 300,
          decoration: BoxDecoration(color: Colors.brown.shade900,
            borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.yellow.shade500),),
          child: TextFormField(
            style: TextStyle(color: Colors.yellow.shade500),
            keyboardType:
            TextInputType.number,
            controller: rattiQuantityController,
            decoration: InputDecoration(
              suffixText: 'Enter Ratti Quantity',suffixStyle: TextStyle(color: Colors.yellow.shade500),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.yellow.shade500,width:3),borderRadius: BorderRadius.circular(5),),
              prefixIcon: Icon(Icons.keyboard,color: Colors.yellow.shade500,),
              border: InputBorder.none,
            ),),),

        Text('Enter Points',style: TextStyle(color: Colors.brown.shade500,fontSize: 15,fontWeight: FontWeight.bold),),
        Container(margin: EdgeInsets.only(bottom: 5),
          height: 50,
          width: 300,
          decoration: BoxDecoration(color: Colors.brown.shade900,border: Border.all(color: Colors.yellow.shade500),borderRadius: BorderRadius.circular(5)),
          child: TextFormField(
            controller: pointsController,
            style: TextStyle(color: Colors.yellow.shade500),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              suffixText: 'Enter Points',suffixStyle: TextStyle(color: Colors.yellow.shade500),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(3),borderSide: BorderSide(color:Colors.yellow.shade500,width: 3),),
              prefixIcon: Icon(Icons.keyboard,color: Colors.yellow.shade500,),
              border: InputBorder.none,
            ),

          ),
        ),
        FloatingActionButton(onPressed: (){
          tolaPriceController.clear();
          tolaQuantityController.clear();
          mashaQuantityController.clear();
          rattiQuantityController.clear();
          pointsController.clear();
          totalPrice=0.0;

          setState(() {

          });
        },backgroundColor: Colors.brown.shade500,splashColor:Colors.yellow.shade500,child: Icon(Icons.refresh),
        ),

        Text("totalprice:$totalPrice",style: TextStyle(color: Colors.brown.shade500,fontWeight: FontWeight.bold),),
        GestureDetector(
          onTap: () {
            if (tolaPriceController.text == ''){
                Get.snackbar(
                  'Error',
                  'Enter Tola Price',
                  backgroundColor: Colors.yellow.shade500.withOpacity(0.5),
                );
                setState(() {

                });
            }
            if (tolaQuantityController.text == '') {
              tolaQuantityController.text = '0';
              setState(() {

              });
            }
            if (mashaQuantityController.text == '') {
              mashaQuantityController.text = '0';
              setState(() {

              });
            }
            if (rattiQuantityController.text == '') {
              rattiQuantityController.text = '0';
              setState(() {

              });
              if (pointsController.text == '') {
                pointsController.text = '0';
                setState(() {

                });
              }
            }
            double TolaPrice = double.parse(tolaPriceController.text);
            double TolaQuantity = double.parse(tolaQuantityController.text);
            double MashaQuantity = double.parse(mashaQuantityController.text);
            double rattiQuantity = double.parse(rattiQuantityController.text);
            double Points = double.parse(pointsController.text);
            setState(() {

            });
            double pricePerMasha = TolaPrice / 12;
            double pricePerratti = TolaPrice / 96;
            double pricePerPoint = TolaPrice / 320;

            double totalPriceTola = TolaPrice * TolaQuantity;
            double totalPriceMasha = pricePerMasha * MashaQuantity;
            double totalPriceratti = pricePerratti * rattiQuantity;
            double totalPricePoints = pricePerPoint * Points;


             totalPrice = totalPriceTola + totalPriceMasha +
                totalPriceratti + totalPricePoints;
            setState(() {

            });
          },
         child: Container(padding: EdgeInsets.only(left:40,top:7),
              margin: EdgeInsets.all(20),
              height: 40,
              width: 150,
              decoration: BoxDecoration(color: Colors.brown.shade900,
                borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.yellow.shade500),),
           child: Text(
             'Calculate',style: TextStyle(color: Colors.yellow.shade500,fontSize:15,fontWeight: FontWeight.bold),)
         ),

        ),

        Row(children: [
          Container(padding: EdgeInsets.only(left:45,top:3),
            margin:EdgeInsets.only(left:65,bottom: 65),
            height: 30,
            width: 200,
            decoration: BoxDecoration(color: Colors.brown.shade900,borderRadius: BorderRadius.circular(5),border: Border.all(
              color: Colors.yellow.shade500,
            )),
            child: Text('Zainab Sahaab',style: TextStyle(color: Colors.yellow.shade500,fontWeight: FontWeight.bold,fontSize: 15),),
          ),

        ],),
      ],),
      ), );
  }
}