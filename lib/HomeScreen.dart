import 'package:flutter/material.dart';
void main()
{
  runApp(Home());
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SafeArea(child: Scaffold(
        backgroundColor: Colors.white,

        body: Container(

          child: Center(
            child: Column(
              children: [
              const   Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Icon(Icons.sort,size: 32),
                      Spacer(),
                      Icon(Icons.search,size: 32),
                      Text("  "),
                      Icon(Icons.shopping_bag_outlined,size: 32),

                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text("Hello,Choose Your \nBest Watch",style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),

                    ),

                  ],
                ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Container(
                   height: 130,
                   width: 1450,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                      Container(
                       height: 130,
                       width: 350,
                       decoration: BoxDecoration(
                         color: Colors.black12,
                         borderRadius: BorderRadius.circular(15),
                       ),
                        child: Center(
                          child: Image.asset('asset/img/Rolex-Winder-Category-Banner-Mobile.jpg'),
                        ),
                     ),
                     Container(
                       height: 130,
                       width: 350,
                       decoration: BoxDecoration(
                         color: Colors.black12,
                         borderRadius: BorderRadius.circular(15),
                       ),
                     ),
                     Container(
                       height: 130,
                       width: 350,
                       decoration: BoxDecoration(
                         color: Colors.black12,
                         borderRadius: BorderRadius.circular(15),
                       ),
                     ),
                     Container(
                       height: 130,
                       width: 350,
                       decoration: BoxDecoration(
                         color: Colors.black12,
                         borderRadius: BorderRadius.circular(15),
                       ),
                     ),

                   ],
                   ),
                 ),
               ),

             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),

                   child: Text("Browse by Brand",style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.bold,
                     fontSize: 17
                   ),),
                 )
               ],
             ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Container(

                    width: 600,
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 18),
                         child: Container(
                           height: 100,
                           width: 80,

                           decoration: BoxDecoration(
                             color: Color(0xffd5d5d5),
                             borderRadius: BorderRadius.circular(37),

                           ),
                           child: Center(
                             child: Image.asset('asset/img/Rolex.png',width: 65),
                           ),
                         ),

                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 18),
                         child: Container(
                           height: 100,
                           width: 80,
                           decoration: BoxDecoration(
                             color: Color(0xffd5d5d5),
                             borderRadius: BorderRadius.circular(37),
                           ),

                           child: Center(
                             child: Image.asset('asset/img/Titan.png',width: 80),
                           ),
                         ),

                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 18),
                         child: Container(
                           height: 100,
                           width: 80,
                           decoration: BoxDecoration(
                             color: Color(0xffd5d5d5),
                             borderRadius: BorderRadius.circular(37),
                           ),

                           child: Center(
                             child: Image.asset('asset/img/Omega.png',width: 78),
                           ),
                         ),

                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 18),
                         child: Container(
                           height: 100,
                           width: 80,
                           decoration: BoxDecoration(
                             color: Color(0xffd5d5d5),
                             borderRadius: BorderRadius.circular(37),
                           ),

                           child: Center(
                             child: Image.asset('asset/img/Hublot.png',width: 73),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 18),
                         child: Container(
                           height: 100,
                           width: 80,
                           decoration: BoxDecoration(
                             color: Color(0xffd5d5d5),
                             borderRadius: BorderRadius.circular(37),
                           ),

                           child: Center(
                              child: Image.asset('asset/img/Watch.png',width: 80),
                           ),
                         ),
                       ),


                     ],

                   ),
                 ),


               ),

                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: 950,
                    child: Column(

                      children: [

                        Row(

                          children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               height: 220,
                               width: 180,
                               decoration: BoxDecoration(
                                   color: Color(0xff959597),
                                   borderRadius:BorderRadius.circular(10)
                               ),

                               child: Center(
                                 child: Image.asset('asset/img/Watch (2).png',height: 180,),
                               ),
                             ),
                           ),
                            Container(
                              height: 220,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: Color(0xff959597),
                                  borderRadius:BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Image.asset('asset/img/Watch2.png',height: 180,),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 220,
                                width: 180,
                                decoration: BoxDecoration(
                                    color: Color(0xff959597),
                                    borderRadius:BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Image.asset('asset/img/Watch3.png',height: 180,),
                                ),
                              ),
                            ),
                            Container(
                              height: 220,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: Color(0xff959597),
                                  borderRadius:BorderRadius.circular(10)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),


              ],

            ),

          ),
        ),
      ),),
    );
  }
}
