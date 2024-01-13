import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/botnavbar.dart';
import 'package:food_delivery_app/views/sign_in_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    sessionControl();
  }

  sessionControl() async {
    var sp = await SharedPreferences.getInstance();

    String spUserName = sp.getString("userName") ?? "Kullanıcı Adı Yok";
    String spPassword = sp.getString("password") ?? "Şifre yok";

    if (spUserName == "admin" && spPassword == "12345") {
       await Future.delayed(const Duration(seconds: 2));

      if(!mounted) return;

       Navigator.pushReplacement(context, 
       MaterialPageRoute(builder: (context) =>const BotNavBarPage()));
    } else {
      await Future.delayed(const Duration(seconds: 2));

      if(!mounted) return;

        Navigator.pushReplacement(context, 
        MaterialPageRoute(builder: (context) => const SigninPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/splashScreen.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
