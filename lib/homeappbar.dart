import 'package:flutter/material.dart';
// import 'package:badges/badges.dart';
import 'package:e_commerce/cart.dart';
class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.topCenter,
      // color: Colors.purple,
      decoration: BoxDecoration(
        color: Colors.teal
        // gradient: LinearGradient(
        //   colors: [
        //     Colors.purple,
        //     Colors.black,
        //   ],
        //
        // )
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Icon(Icons.sort,size: 30,
          color: Colors.black,),
          Padding(padding: EdgeInsets.only(left: 60),
          child:Text("ShopIt",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),)
          ),
          Spacer(),
         Badge(
           label: Text("3"),
             child: InkWell(
           onTap: (){
             Navigator.pushNamed(context, "cartpage");
     },
           child: Icon(Icons.shopping_bag,color: Colors.white,size:30,),
         )),

        ],
      ),
    );

  }
}
