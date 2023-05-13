import 'package:flutter/material.dart';
import 'package:e_commerce/home.dart';
import 'package:e_commerce/cart.dart';
import 'package:e_commerce/itempage.dart';
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: { 
      "/" : (context)=>Home(),
      "cartpage":(context)=>Cart(),
      "itempage":(context)=>Items(),
    },
  ));
}

