import 'package:flutter/material.dart';
import 'package:e_commerce/cart.dart';
import 'package:e_commerce/itempage.dart';
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(childAspectRatio: 0.60,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,shrinkWrap: true,
      children: [
        for(int i=1;i<=8;i++)
        Container(
padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 5),
          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12,
                    width:3),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
Container(
  padding: EdgeInsets.all(5),
  decoration: BoxDecoration(
    color: Colors.teal,
    borderRadius: BorderRadius.circular(20),
  ),
  child: Text("50%",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color:Colors.black),),
) ,      
Icon(Icons.favorite_border,color: Colors.red,)
                ],
              ),
              InkWell(
                onTap: (){},
                child:InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, 'itempage');
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/$i.png",height: 120,width: 120,),
                  ),
                ) ,
              ),
              Padding(padding: EdgeInsets.only(bottom: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Product Name",style: TextStyle(fontSize: 18,color: Colors.purple,fontWeight: FontWeight.bold),),
              ),

              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Description",style: TextStyle(fontSize: 18,color: Colors.teal,),),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$55",style: TextStyle(fontSize: 16,color: Colors.teal),),

               InkWell(onTap: () {
                 Navigator.pushNamed(context, "cartpage");
               },
                   child: Icon(Icons.shopping_cart_checkout,color: Colors.black,size: 18,),),
                ],
              ),)
            ],
          ),
        ),

      ],

    );
  }
}
