import 'package:e_commerce/cartitems.dart';
import 'package:e_commerce/home.dart';
import 'package:flutter/material.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          backgroundColor:Colors.teal,
          title: Text("Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.white),),
          actions: [
            Icon(Icons.more_vert,size: 30,)
          ],
        ),
        body: ListView(
          children:[ Container(
            height: 700,

            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(topLeft:Radius.circular(35),topRight:Radius.circular(35)

              )
            ),
            child: Column(

              children: [
                CartItems(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.add,color: Colors.white,),),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Add any applicable coupon ",style: TextStyle(color: Colors.teal,fontSize: 18,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),

                ),


              ],
            ),
          ),
        ]
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              height: 110,
              child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text (
              "Total:",
              style: TextStyle(
              color: Colors.teal,
            fontSize: 22,
            fontWeight: FontWeight.bold,
    ),
// TextStyle
    ),
        Text (
        "\$250",
        style: TextStyle(color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold
    ),),
            ]
          ),
              InkWell(onTap: (){
                Navigator.pushNamed(context, "/");
              },
                child: Container(
                alignment: Alignment.center,
                height: 50,

                decoration: BoxDecoration(
                  //   color: Color (0xFF4C5345),
                  color: Colors.black,
                    borderRadius: BorderRadius.circular (20),
                ),
                child: Text(
          "Check Out",
          style: TextStyle(
          fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
          ))

                ),
              )  ,
    ]
        ),


      ),
          ),),
    );
  }
}
