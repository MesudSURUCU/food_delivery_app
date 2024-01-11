import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/cart.dart';
import 'package:food_delivery_app/views/menu_page.dart';
import 'package:food_delivery_app/views/profile.dart';



class BotNavBarPage extends StatefulWidget {


  const BotNavBarPage({super.key});

  @override
  State<BotNavBarPage> createState() => _BotNavBarPageState();
}

class _BotNavBarPageState extends State<BotNavBarPage> {

  int _currentIndex = 0;

   void onTap (int index) {
          
          setState(() {
            _currentIndex = index;
          });
        }

  List<Widget> list = [
    const MenuPage(),
    const Cart(),
    const Profile(),
  ];    

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: onTap,
        items: const [
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Menü"),
             BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Sepetim"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              label: "Profil")
        ]),
      body: list[_currentIndex],
    );
  }
}

