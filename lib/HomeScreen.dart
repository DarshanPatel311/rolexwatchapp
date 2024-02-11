import 'package:flutter/material.dart';
import 'package:rolexwatchapp/utils/producatlist.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white ,
          body: SingleChildScrollView(
            child: SizedBox(
              height: 1380,
              child: Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.sort, size: 32, color: Colors.black),
                          Text(
                            "Mr D.K",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),

                          Icon(
                            Icons.shopping_bag_outlined,
                            size: 32,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 0.8,
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: const Row(
                              children: [
                                Text("  "),
                                Icon(Icons.search,
                                  size: 30,
                                ),
                                Text(
                                  "  Search",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.qr_code_scanner_sharp),
                                Text("    "),
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: const Center(
                              child: Text(
                                'Rolex',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: const Center(
                              child: Text(
                                'Titan',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                           SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: const Center(
                                child: Text(
                              'Omega',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: const Center(
                              child: Text(
                                'Fastrack',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                         SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: const Center(
                              child: Text(
                                'Hublot',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: const Center(
                              child: Text(
                                'Setko',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: List.generate(
                            watchDataList.length,
                                (index) => InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'Watchdata',arguments: watchDataList[index]);
                              },
                              child: watchBox(
                                name: watchDataList[index]['name'],
                                price: watchDataList[index]['price'],
                                img: watchDataList[index]['img'],
                                rating: watchDataList[index]['rating'],

                              ),
                            ),
                          ),
                        ),

                        Column(
                          children: List.generate(
                            watchDataList2.length,
                                (index) => InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'Watchdata',arguments: watchDataList2[index]);
                              },
                              child: watchBox(
                                name: watchDataList2[index]['name'],
                                price: watchDataList2[index]['price'],
                                img: watchDataList2[index]['img'],
                                rating: watchDataList2[index]['rating'],

                              ),
                            ),
                          ),
                        ),
                      ],
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
  Widget watchBox(
    {required String img,
      required String name,
      required double rating,

      required int price}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    height: 220,
    width: 180,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          blurRadius: 3,
          spreadRadius: 1,
          color: Colors.black,
        )
      ],
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Stack(
          children: [
            Row(
              children: [
                Container(
                  height: 160,
                  width: 175,

                  child: Image.asset(
                      img,
                   height: 150,
                ),
                ),
              ],
            ),

            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1,

              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  '\$ $price/-',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}



