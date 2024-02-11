import 'package:flutter/material.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff010101),
        body: Stack(children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('asset/img/splesh.jpg', fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.topCenter,
              height: 150,
              width: 300,
              color: Color(0xff040205),
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context)
                        .pushReplacementNamed('Home');
                  });
                },
                child: Container(
                  height: 60,
                  width: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black,width: 5),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius:5,
                        spreadRadius: 0.5,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  child: const Text(
                    "Get Start",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
