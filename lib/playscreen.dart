import 'package:flutter/material.dart';
void main()
{
  runApp(const playscreen());
}
class playscreen extends StatelessWidget {
  const playscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(
        body:Image.network('asset/img/photo-1524805444758-089113d48a6d.avif',height: double.infinity,width: double.infinity,),

      ),),

    );
  }
}
