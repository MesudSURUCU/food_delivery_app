import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/components/bg_image_oflist.dart';
import 'package:food_delivery_app/models/entities/food_menu_list.dart';
import 'package:food_delivery_app/presentation/components/format_amount.dart';

class WarmStarterListPage extends StatefulWidget {
  const WarmStarterListPage({super.key});

  @override
  State<WarmStarterListPage> createState() => _WarmStarterListPageState();
}

class _WarmStarterListPageState extends State<WarmStarterListPage> {
  var warmStarterMenu = <MenuItem> [
    MenuItem(name: 'Kabak Kızartması', photo: 'assets/warmStarterImages/kabak_kizartmasi.png', price: 80.0 ),
    MenuItem(name: 'Karides Güveç', photo: 'assets/warmStarterImages/karides_guvec.png', price: 70.0),
    MenuItem(name: 'Paçanga Böreği', photo: 'assets/warmStarterImages/pacanga_boregi.png', price: 85.0),
    MenuItem(name: 'Mantar Graten', photo: 'assets/warmStarterImages/mantar_graten.png', price: 75.0),
    MenuItem(name: 'Patates Kroket', photo: 'assets/warmStarterImages/patates_kroket.png', price: 65.0),
    MenuItem(name: 'Patlıcan Sarma', photo: 'assets/warmStarterImages/patlican_sarma.png', price: 60.0),
    MenuItem(name: 'Sigara Böreği', photo: 'assets/warmStarterImages/sigara_boregi.png', price: 100.0),
    MenuItem(name: 'Kaburga Mısır', photo: 'assets/warmStarterImages/kaburga_misir.png', price: 100.0),
    MenuItem(name: 'Karnabahar Pane', photo: 'assets/warmStarterImages/karnabahar_pane.png', price: 100.0),
    MenuItem(name: 'Tavuklu Börek', photo: 'assets/warmStarterImages/tavuklu_borek.png', price: 100.0),
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
              itemCount: warmStarterMenu.length,
              itemBuilder: (context, index){
                return SizedBox(
                  height: 100,
                  child: ListTile(
                    title: Text(warmStarterMenu[index].name, 
                    style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 25, 
                    fontWeight: FontWeight.bold, color: Colors.white),),
                    subtitle: Text("${formatAmount(warmStarterMenu[index].price!)}", 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                    leading: CircleAvatar(backgroundImage: AssetImage(warmStarterMenu[index].photo),
                    ),
                    onTap: (){},
                  ),
                );
              
              },
            ),
          ),
        ),
        ]
      ),
    );
  }
}
