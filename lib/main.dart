import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/home.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp(),) );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),
    (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
    );
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(image:
          DecorationImage(image: 
          AssetImage("assets/splashScreen.png",),
          fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

