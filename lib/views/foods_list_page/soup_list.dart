import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/widgets/bg_image.dart';
import 'package:food_delivery_app/models/food_menu_list.dart';
import 'package:food_delivery_app/models/format_amount.dart';

class SoupListPage extends StatefulWidget {
  const SoupListPage({super.key});

  @override
  State<SoupListPage> createState() => _SoupListPageState();
}

class _SoupListPageState extends State<SoupListPage> {
  var soupMenu = <MenuItem>[
    MenuItem(
        name: 'Bal Kabağı Çorbası',
        photo: 'assets/soupImages/bal_kabagi_corbasi.png',
        price: 80.0),
    MenuItem(
        name: 'Brokoli Çorbası',
        photo: 'assets/soupImages/brokoli_corbasi.png',
        price: 70.0),
    MenuItem(
        name: 'Mantar Çorbası',
        photo: 'assets/soupImages/mantar_corbasi.png',
        price: 85.0),
    MenuItem(
        name: 'Ezogelin Çorbası',
        photo: 'assets/soupImages/ezogelin_corbasi.png',
        price: 75.0),
    MenuItem(
        name: 'Yayla Çorbası',
        photo: 'assets/soupImages/yayla_corbasi.png',
        price: 65.0),
    MenuItem(
        name: 'Domates Çorbası',
        photo: 'assets/soupImages/domates_corbasi.png',
        price: 60.0),
    MenuItem(
        name: 'Paça Çorbası',
        photo: 'assets/soupImages/paca_corbasi.png',
        price: 100.0),
    MenuItem(
        name: 'Patates Çorbası',
        photo: 'assets/soupImages/patates_corbasi.png',
        price: 55.0),
    MenuItem(
        name: 'Tarhana Çorbası',
        photo: 'assets/soupImages/tarhana_corbasi.png',
        price: 90.0),
    MenuItem(
        name: 'Köfteli Çorba',
        photo: 'assets/soupImages/kofteli_corba.png',
        price: 95.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         const BGImageofList(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 160, 20, 120),
              child: ListView.builder(
                  itemCount: soupMenu.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 100,
                      child: ListTile(
                        title: Text(
                          soupMenu[index].name,
                          style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        subtitle: Text(
                          "$formatAmount(soupMenu[index].price!)",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(soupMenu[index].photo),
                        ),
                        onTap: () {},
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
