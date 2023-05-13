import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CartItems extends StatefulWidget {
  const CartItems({Key? key}) : super(key: key);

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  int c=0;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  Widget build(BuildContext context) {

    return Column(

      children: [
        for(int i=1;i<4;i++)
        Container(
          height:110,
          // width: 80,
          // color: Colors.black,
          margin: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
         padding: EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Radio(value:"", groupValue: "", onChanged:(index){} ,activeColor: Colors.teal,),

              Container(
                height: 70,
                width: 50,

                // margin: EdgeInsets.only(right: ),
                child: Image.asset("assets/$i.png"),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical:10 ,horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Product Title",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.purple,)),
                  Text("\$55",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.teal),)
                ],
              ),),
              Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.delete,size: 24,color: Colors.red,),
                  Row(
                    children:[ Container(
                     padding: EdgeInsets.all(4),
                      decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow:[
                          BoxShadow(
                            color: Colors.transparent.withOpacity(0.9),
                            spreadRadius: 1,
                            blurRadius: 10,

                          )
                        ]

                      ) ,
                      child: InkWell(
                        onTap: ()=>setState(() {
                          c=c+1;
                        }),
                        child: Icon(CupertinoIcons.plus,
                        size: 12,),
                      ),

                    ),
             // SizedBox(width: 16,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("$c",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                      ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow:[
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.9),
                            spreadRadius: 1,
                            blurRadius: 10,

                          )
                        ]

                    ) ,
                    child: InkWell(
                      onTap: ()=>setState(() {
                        c=c-1;
                      }),
                      child: Icon(CupertinoIcons.minus,
                        size: 12,),
                    ),

                  ),
                      ])
                ],
              ),)
            ],
          ),
        ),
      ],
    );
  }
}
