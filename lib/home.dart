import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Rolex Watchs",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            actions: [
              Icon(
                Icons.shopify_rounded,
                size: 40,
                color: Colors.white,
              ),
              Icon(
                Icons.search,
                size: 40,
                color: Colors.white,
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              height: 1200,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 600,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // frist Row
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                  colors: [Colors.amber, Colors.amber.shade300],
                                ),
                                borderRadius: BorderRadius.circular(6)),
                            alignment: Alignment.center,
                            child: Text(
                              "Rolex",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                  colors: [Colors.amber, Colors.amber.shade300],
                                ),
                                borderRadius: BorderRadius.circular(6)),
                            alignment: Alignment.center,
                            child: Text(
                              "Rolex Deepsea",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                  colors: [Colors.amber, Colors.amber.shade300],
                                ),
                                borderRadius: BorderRadius.circular(6)),
                            alignment: Alignment.center,
                            child: Text(
                              "GMT-Master ||",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                  colors: [Colors.amber, Colors.amber.shade300],
                                ),
                                borderRadius: BorderRadius.circular(6)),
                            alignment: Alignment.center,
                            child: Text(
                              "Oyster perprtual",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // Second Row
                  Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        width: 1200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 150,
                              width: 380,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Image.asset(
                                    'asset/img/Rolex-Winder-Category-Banner-Mobile.jpg'),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 380,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Watchs",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 380,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Watchs",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  // first Colum
                  Container(
                    height: 950,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              height: 220,
                              width: 180,
                              decoration: BoxDecoration(

                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: 150,
                                width: 180,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: AlignmentDirectional.centerStart,
                                      end: AlignmentDirectional.centerEnd,
                                      colors: [
                                        Colors.amber,
                                        Colors.black
                                        // Colors.black87,
                                        // Colors.black87,
                                      ]),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),


                                ),

                                  child: Center(
                                    child: Image.asset(
                                        'asset/img/rolex-oyster-perpetual-day-date-40-228238-0061-800x1460.webp'),
                                  ),

                              ),
                            ),
                            Container(
                              height: 220,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 220,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              height: 220,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 220,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              height: 220,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 220,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              height: 220,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
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
        ),
      ),
    );
  }
}
