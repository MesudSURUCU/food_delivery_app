import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/widgets/bg_image.dart';
import 'package:food_delivery_app/models/food_menu_list.dart';
import 'package:food_delivery_app/models/format_amount.dart';

class DessertListPage extends StatefulWidget {
  const DessertListPage({super.key});

  @override
  State<DessertListPage> createState() => _DessertListPageState();
}

class _DessertListPageState extends State<DessertListPage> {

   var dessertMenu = <MenuItem> [
    MenuItem(name: 'Cheesecake', photo: 'assets/dessertImages/cheesecake.png', price: 80.0 ),
    MenuItem(name: 'Çilekli Diyet Kek ', photo: 'assets/dessertImages/cilekli_diyet_kek.png', price: 70.0),
    MenuItem(name: 'Elmalı Tatlı', photo: 'assets/dessertImages/elmali_tatli.png', price: 85.0),
    MenuItem(name: 'Havuç Tatlısı', photo: 'assets/dessertImages/havuc_tatlisi.png', price: 75.0),
    MenuItem(name: 'Islak Kek', photo: 'assets/dessertImages/islak-kek.png', price: 65.0),
    MenuItem(name: 'Kurabiye', photo: 'assets/dessertImages/kurabiye.png', price: 60.0),
    MenuItem(name: 'Muzlu Pancake', photo: 'assets/dessertImages/muzlu_pancake.png', price: 100.0),
    MenuItem(name: 'Sütlaç', photo: 'assets/dessertImages/sutlac.png', price: 100.0),
    MenuItem(name: 'Tarçınlı İncir Uyutması', photo: 'assets/dessertImages/tarcinli_incir_uyutmasi.png', price: 100.0),
    MenuItem(name: 'Yulaflı Çikolatalı Tatlı', photo: 'assets/dessertImages/yulafli_cikolatali-tatli.png', price: 100.0),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        const  BGImageofList(),
          SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 160, 20, 120),
            child: ListView.builder(
              itemCount: dessertMenu.length,
              itemBuilder: (context, index){
                return SizedBox(
                  height: 100,
                  child: ListTile(
                    title: Text(dessertMenu[index].name, 
                    style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 25, 
                    fontWeight: FontWeight.bold, color: Colors.white),),
                    subtitle: Text("${formatAmount(dessertMenu[index].price!)}", 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                    leading: CircleAvatar(backgroundImage: AssetImage(dessertMenu[index].photo),
                    ),
                    onTap: (){},
                  ),
                );           
              },
            ),
          ),
        ),
        ],
      ),
    );
  }
}
