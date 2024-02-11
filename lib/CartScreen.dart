import 'package:flutter/material.dart';
import 'package:rolexwatchapp/utils/producatlist.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text(
              'My Cart',
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),

            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                child: Column(
                  children: List.generate(
                      cartList.length,
                          (index) => Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 350,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1,
                              blurRadius: 5,
                              color: Colors.black,
                            ),
                          ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Image.asset(cartList[index]['img'],height: 130,),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                    SizedBox(height: 30,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Text(
                                    cartList[index]['name'],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Text(
                                    "Your Choice is Good",
                                    style: TextStyle(
                                        color: Colors.black,

                                        fontSize: 12),
                                  ),
                                ),

                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 25),
                                      child: Text(
                                        '\$ ${cartList[index]['price']}/-',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                    ),

                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            cartList.removeAt(index);
                                          });
                                        },

                                        icon: Icon(
                                          Icons.delete_forever_outlined,
                                          color: Colors.black54,
                                          size: 40,
                                        ),),


                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),
                      )),

                ),

              ),


            ),
          )),
    );
  }
}