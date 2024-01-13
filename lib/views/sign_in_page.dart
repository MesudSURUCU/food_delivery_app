import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/botnavbar.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {

 final _userName = TextEditingController();
 final _password = TextEditingController();

 var scaffoldKey = GlobalKey<ScaffoldState>();

 Future<void> accessControl() async {

var un = _userName.text;
var pw = _password.text;

if (un == "admin" && pw == "12345") {

var sp = await SharedPreferences.getInstance();

sp.setString("userName", un);
sp.setString("password", pw);
      
if(!mounted) return;

 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const BotNavBarPage()));

}else {

ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Giriş Hatalı")));

}


 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("Sign In", style: TextStyle(color: Colors.white),),
        
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _userName,
                decoration: const InputDecoration(
                  labelText: "Ad Soyad",
                ),
              ),
              TextField(
                controller: _password ,
                decoration: const InputDecoration(
                  labelText: "Şifre",
                  ),
                  obscureText: true,
              ),
              ElevatedButton(onPressed: () {
               accessControl();
              },
              child: const Text("Giriş")),
             const SizedBox(height: 100,),
              const Text("Giriş kullanıcı adı ve şifre ile kullanıcı oturumu kontrolü için  Shared Prefences kullanılmıştır.."),
             const SizedBox(height: 20,),
             const Text("Ad Soyad : admin",style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const  Text("Şifre : 12345",style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}