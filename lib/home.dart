import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/homeappbar.dart';
import 'package:e_commerce/categories.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce/cart.dart';
import 'package:e_commerce/itempage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Widget listitems(
        { required String url,required String name})
    {
return SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Column(
    children: [
      CircleAvatar(
        child: Image(image:AssetImage(url),),
        radius: 40,
        backgroundColor: Colors.white,

      ),
      Text(name),
    ],
  ),
);
    }
    return Scaffold(
 body: ListView(
   children: [
     HomeAppBar(),
     Container(

       // height: 500,
       padding: EdgeInsets.only(top: 10),
       margin: EdgeInsets.symmetric(vertical: 15),
       decoration: BoxDecoration(
         color: Colors.transparent,
         borderRadius: BorderRadius.only(
           topRight: Radius.circular(35),
               topLeft: Radius.circular(35),
         )
       ),
       child: Column(
         children: [
           Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
             height: 50,
             // width: 350,
             decoration: BoxDecoration(
               color: Colors.black12,

               borderRadius: BorderRadius.circular(30),
             ),
             child:  Row(
     children:[ Container(
     margin: EdgeInsets.only(left:5),
         height: 50,
         width:200,
         child: TextField(

         decoration: InputDecoration(
         border: InputBorder. none,

         hintText:
         ("Search here..."),
     ),
         ),
     ),
     SizedBox(
       width: 30,
     ),
     Icon(Icons.camera_alt,size: 27,color: Colors.black,),


         ]

           ),

           ),
           Container(
           alignment: Alignment.centerLeft,
             margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
             child: Text("Categories",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),

           ),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                listitems(
                    url: "assets/1.png",
                    name: "Sandals"
                ),
                 SizedBox(
                   width: 20,
                 ),
                 listitems(url: "assets/2.png",
                     name: "Watch"),
                 SizedBox(
                   width: 20,
                 ),
                 listitems(url: "assets/6.png",
                     name: "Heels"),
                 SizedBox(
                   width: 20,
                 ),
                 listitems(url: "assets/5.png",
                     name: "Bag"),
                 SizedBox(
                   width: 20,
                 ),
                 listitems(url: "assets/2.png",
                     name: "Sandals"),
               ],
             ),
           ),
           Container(
             alignment: Alignment.centerLeft,
             margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
             child: Text("Best Selling",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
           ),
          Categories(),
],


           ),

       ),

   ],
 ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 70,
        // color: Colors.purple,
        color: Colors.teal,
        items: [

          Icon(CupertinoIcons.home,size: 30,color: Colors.white),

          InkWell(onTap: (){

            Future.delayed(
                Duration(seconds: 1),(){
              Navigator.pushNamed(context, "cartpage");
            }
            );
          },
              child: Icon(CupertinoIcons.cart,size: 30,color: Colors.white,)),
          InkWell(onTap: (){

            Future.delayed(
            Duration(seconds: 1),(){
            Navigator.pushNamed(context, "itempage");
            }
             );
          },
              child: Icon(Icons.list,size: 30,color: Colors.white,)),


        ],
      ),
    );
  }
}
