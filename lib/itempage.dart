import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:e_commerce/cart.dart';
class Items extends StatefulWidget {
  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
List<Color> Clrs =[
  Colors.red,
 Colors.green,
  Colors.blue,
  Colors.black,
  Colors.yellow,
];



  int d=0;

  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Colors.white,
appBar: AppBar(

  title: Text("Product",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
  backgroundColor: Colors.teal,
  actions: [
   Padding(padding:EdgeInsets.only(right: 20),
   child: Icon(Icons.favorite,color: Colors.red,)),
],),
   body: ListView(
     children:[

       Container(

        child: Padding(padding: EdgeInsets.all(16),

        child:Image.asset("assets/1.png"),

        ),),
       Arc(height: 40,
           edge: Edge.TOP,
           arcType: ArcType.CONVEY,
           child: Container(
             width: double.infinity,
             color: Colors.black12,
             child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
               child: Column(
                 children: [

                     Padding(
                       padding: const EdgeInsets.only(top: 45,bottom: 15,),
                       child: Row(
                         children: [
                           Text("Product Title", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25  ,color: Colors.teal),),
                         ],
                       ),
                     ),
                   Padding(padding: EdgeInsets.only(top: 5,bottom: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         RatingBar.builder(
                             itemBuilder: (context , _)=>Icon(Icons.favorite,color: Colors.red,),
                             onRatingUpdate: (index){},
                           itemCount: 5,
                           initialRating: 4,
                           direction: Axis.horizontal,
                           itemSize: 23,
                           minRating: 1,
                           itemPadding: EdgeInsets.symmetric(horizontal: 4),
                         ),
            Row(
              children: [
                Container(
       padding:EdgeInsets.all(5) ,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
    spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0,3),
                      ),
                    ]
                  ),
                  child: InkWell(
                    onTap: ()=>setState(() {
    d=d-1;
    }),
                    child: Icon(CupertinoIcons.minus,size: 10,color: Colors.black
                      ,),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Text("$d",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Container(
                  padding:EdgeInsets.all(5) ,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          spreadRadius: 3,
                          blurRadius: 10,
                          // offset: Offset(0,3),
                        ),
                      ]
                  ),
                  child: InkWell(
                    onTap: ()=>setState(() {
                      d=d+1;
                    }),
                    child: Icon(CupertinoIcons.plus,size: 10,color: Colors.black,
                      ),
                  ),
                )
              ],
            )
                       ],
                     ),),
            Padding(padding: EdgeInsets.symmetric(vertical: 12),
            child: Text("This refers to the description of the item displayed.Refer this for its description",style: TextStyle(fontSize: 16,color: Colors.black,),textAlign: TextAlign.justify,),),
        Padding(padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
          Text("Size:",style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,

          ),),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                for(int i=5;i<10;i++)
                Container(
                  height: 30,
                  width: 30,
                  // color: Colors.white,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 2,
                        blurRadius: 8,
                      ),
                    ]
                  ),
                  child: Text("$i",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                ),

              ],
            )

        ],),
        ),

                   Padding(padding: EdgeInsets.symmetric(vertical: 8),
                     child: Row(
                       children: [
                         Text("Color:",style: TextStyle(
                           fontSize: 18,
                           color: Colors.black,
                           fontWeight: FontWeight.bold,

                         ),),
                         SizedBox(
                           width: 10,
                         ),
                         Row(
                           children: [
                             for(int i=0;i<5;i++)
                               Container(
                                 height: 30,
                                 width: 30,
                                 // color: Colors.white,
                                 alignment: Alignment.center,
                                 margin: EdgeInsets.symmetric(horizontal: 5),
                                 decoration: BoxDecoration(
                                     color: Clrs[i],
                                     borderRadius: BorderRadius.circular(30),
                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.grey.withOpacity(0.8),
                                         spreadRadius: 2,
                                         blurRadius: 8,
                                       ),
                                     ]
                                 ),

                               ),

                           ],
                         )

                       ],),
                   ),

                 ],
               ),
    ),
    ),
       ),
     ],
    ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 20),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0,3),
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$120",style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.bold,)
                ,),
              ElevatedButton.icon(onPressed: (){}, icon:Icon(CupertinoIcons.cart_badge_plus,color: Colors.white,) ,

                  label: InkWell(onTap: (){
                    Navigator.pushNamed(context, "cartpage");
                  },
                      child: Text("Add To Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 13,horizontal: 15),

              ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
                )
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
