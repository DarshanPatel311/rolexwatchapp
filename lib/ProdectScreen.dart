import 'package:flutter/material.dart';
import 'package:rolexwatchapp/utils/producatlist.dart';

void main() {
  runApp(ProdectScreen());
}

class ProdectScreen extends StatefulWidget {
  const ProdectScreen({super.key});

  @override
  State<ProdectScreen> createState() => _ProdectScreenState();
}

class _ProdectScreenState extends State<ProdectScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(

            child: Column(
              children: [
                Container(
                  height: 40,
                  color:  Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Icon(Icons.shopping_cart_outlined,size: 30,),
                      Text("  "),
                    ],
                  ),
                ),

                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 350,
                          width: 410,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(0)),
                             // boxShadow: [
                             //   BoxShadow(
                             //     blurRadius: 4,
                             //   )
                             // ],
                          ),

                          child: Center(
                            child: Image.asset('asset/img/6.png'),

                          ),

                        ),

                      ],
                    ),

                   Row(

                     children: [
                       SizedBox(width: 160,),
                       Text("_ ",style: TextStyle(
                           fontSize: 30,
                           color: Colors.black
                       ),),
                       Text("_ _ _",style: TextStyle(
                           fontSize: 30,
                           color: Colors.grey
                       ),),


                     ],
                   ),

                    SizedBox(height: 10,),
                    Container(
                         height: 80,
                      width: 1000,
                      color: Colors.black12,
                      child: Row(

                        children: [

                          Text("  Armani Exchange Analog Black \n  Dial Men Watch\n\n\n",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19
                          ),),
                          Icon(Icons.share),
                          Text("   "),
                          Icon(Icons.favorite_border,size: 30,),
                          Text("   "),

                        ],
                      ),
                    ),

                    Row(
                      children: [
                       Text(" ＄1000 ",style: TextStyle(
                         fontSize: 27,

                         fontWeight: FontWeight.bold,

                       ),),
                        Text(" 10% off",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),

                      ],
                    ),
                    Row(
                      children: [
                        Text("  ⭐ ",style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("4.8 ",style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                  ],
                ),

                    SizedBox(height: 100,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     height: 50,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(25),
                       border: Border.all(),
                       boxShadow: [
                         BoxShadow(
                           blurRadius: 4,
                         )
                         ]
                     ),
                     child: Row(

                       children: [
                         Text("                        "),
                         Icon(Icons.shopping_cart_outlined,size: 30,),
                         Text("  "),
                         Text("ADD TO CART",style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.bold,
                         ),),
                       ],
                     ),
                   ),

                 ],
               )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
