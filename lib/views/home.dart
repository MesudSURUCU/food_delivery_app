import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/botnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: const BoxDecoration(image: DecorationImage(
          image: AssetImage("assets/home_photo.png"),
          fit: BoxFit.cover),
          ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("HOŞGELDİNİZ, LEZZETLİ YEMEKLER SADECE BİR TIK UZAĞINIZDA", style: TextStyle(
                color: Colors.white, 
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic ),
                ),
                const SizedBox(height: 150),
                MaterialButton(onPressed: () => Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const BotNavBarPage())),
                minWidth: 300,
                height: 60,
                color: Colors.grey,
                child: const Text("BAŞLA", style: TextStyle(
                    color: Colors.white, 
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic ),
                    ),
                    ),
                    const SizedBox(height: 200),
                    const Text("İlk siparişinize özel %10 indirim sizi bekliyor!",style: TextStyle(
                    color: Colors.white, 
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic ), ),
            ],
          ),
        ),
        ),
    );
  }
}