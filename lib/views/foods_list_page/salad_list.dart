import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/widgets/bg_image.dart';
import 'package:food_delivery_app/models/food_menu_list.dart';
import 'package:food_delivery_app/models/format_amount.dart';

class SaladListPage extends StatefulWidget {
  const SaladListPage({super.key});

  @override
  State<SaladListPage> createState() => _SaladListPageState();
}

class _SaladListPageState extends State<SaladListPage> {

var saladMenu = <MenuItem> [
  
    MenuItem(name: 'Detoks Salata', photo: 'assets/saladImages/detoks_salata.png', price: 80.0 ),
    MenuItem(name: 'Endivyen Salatası', photo: 'assets/saladImages/endivyen_salatasi.png', price: 70.0),
    MenuItem(name: 'Hellimli Salata', photo: 'assets/saladImages/hellimli_salata.png', price: 85.0),
    MenuItem(name: 'Kaşık Salatası', photo: 'assets/saladImages/kasik_salata.png', price: 75.0),
    MenuItem(name: 'Kerevizli Tomtom', photo: 'assets/saladImages/kerevizli_tomtom.png', price: 65.0),
    MenuItem(name: 'Mısırlı Salata', photo: 'assets/saladImages/misirli_salata.png', price: 60.0),
    MenuItem(name: 'Sezar Salata', photo: 'assets/saladImages/sezar_salata.png', price: 100.0),
    MenuItem(name: 'Tavuklu Salata', photo: 'assets/saladImages/tavuklu_salata.png', price: 100.0),
    MenuItem(name: 'Ton Balıklı Salata', photo: 'assets/saladImages/ton-balikli-salata.png', price: 100.0),
  
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
              itemCount: saladMenu.length,
              itemBuilder: (context, index){
                return SizedBox(
                  height: 100,
                  child: ListTile(
                    title: Text(saladMenu[index].name, 
                    style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 25, 
                    fontWeight: FontWeight.bold, color: Colors.white),),
                    subtitle: Text("$formatAmount(saladMenu[index].price!)", 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                    leading: CircleAvatar(backgroundImage: AssetImage(saladMenu[index].photo),
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