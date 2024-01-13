import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/widgets/bg_image.dart';
import 'package:food_delivery_app/models/food_menu_list.dart';
import 'package:food_delivery_app/models/format_amount.dart';

class AppetizerListPage extends StatefulWidget {
  const AppetizerListPage({super.key});

  @override
  State<AppetizerListPage> createState() => _AppetizerListPageState();
}

class _AppetizerListPageState extends State<AppetizerListPage> {
  
 var appetizerMenu = <MenuItem> [
    MenuItem(name: 'Acılı Ezme', photo: 'assets/appetizerImages/acili_ezme.png', price: 80.0 ),
    MenuItem(name: 'Ajvar', photo: 'assets/appetizerImages/ajvar.png', price: 70.0),
    MenuItem(name: 'Biber Kızartması', photo: 'assets/appetizerImages/biber_kizartmasi.png', price: 85.0),
    MenuItem(name: 'Fava', photo: 'assets/appetizerImages/fava.png', price: 75.0),
    MenuItem(name: 'Haydari', photo: 'assets/appetizerImages/haydari.png', price: 65.0),
    MenuItem(name: 'Kalamar', photo: 'assets/appetizerImages/kalamar.png', price: 60.0),
    MenuItem(name: 'Mantar Gömme', photo: 'assets/appetizerImages/mantar_gomme.png', price: 100.0),
    MenuItem(name: 'Bal Kabaklı Humus', photo: 'assets/appetizerImages/bal_kabakli_humus.png', price: 100.0),
    MenuItem(name: 'Kereviz Mezesi', photo: 'assets/appetizerImages/kereviz_mezesi.png', price: 100.0),
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
              itemCount: appetizerMenu.length,
              itemBuilder: (context, index){
                return SizedBox(
                  height: 100,
                  child: ListTile(
                    title: Text(appetizerMenu[index].name, 
                    style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 25, 
                    fontWeight: FontWeight.bold, color: Colors.white),),
                    subtitle: Text("$formatAmount(appetizerMenu[index].price!)", 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                    leading: CircleAvatar(backgroundImage: AssetImage(appetizerMenu[index].photo),
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
