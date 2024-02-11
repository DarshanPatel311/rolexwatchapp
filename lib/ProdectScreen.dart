import 'package:flutter/material.dart';
import 'package:rolexwatchapp/utils/producatlist.dart';


class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {

    var watch = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
      child: Scaffold(
backgroundColor: Colors.white,
        appBar: AppBar(
         backgroundColor: Colors.white,
        ),
        body: Container(
          height: double.infinity,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                  height: 272,
                  width: double.infinity,
                  child: Image.asset(
                    watch['img'],

                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("- ",style: TextStyle(
                      fontSize: 40,
                      color: Colors.black),
                  ),
                  Text("- - -",style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey),
                  ),
                ],
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.all(10),
                height: 48,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      watch['name'],
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.favorite_border,color: Color(0xff1F2544),size: 22,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    SizedBox(width: 10,),
                    Icon(
                      Icons.star_half,
                      color: Colors.black,
                      size: 17,
                    ),
                    Text(
                      '   ${watch['rating']}  (${watch['reviews']} reviews)  ',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(thickness: 0.5),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: Text(
                  'Description',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff1F2544),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  watch['description'],
                  style: TextStyle(color: Color(0xff1F2544), fontSize: 10),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                // child: Divider(thickness: 0.5),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total price',
                          style: TextStyle(color: Color(0xff1F2544), fontSize: 13),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          '\$ ${watch['price']}/-',
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(38),
                          child: Container(
                            height: 50,
                            width: 290,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),

                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                  color: Colors.black,
                                ),
                              ],

                            ),
                            child :InkWell(
                              onTap: () {


                                  cartList.add(watch);


                              },
                            child: Center(

                                  child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 78),
                                        child: Row(
                                          children: [

                                            Icon (Icons.shopping_cart_outlined),
                                            Text(" ADD TO CART",style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),)
                                          ],
                                        ),
                                      )),
                                ),
                                // )Text("ADD TO CART"),
                            ),

                          ),
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}