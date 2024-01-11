import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/widgets/bg_image.dart';
import 'package:food_delivery_app/models/food_menu_list.dart';
import 'package:food_delivery_app/models/format_amount.dart';

class DrinkListPage extends StatefulWidget {
  const DrinkListPage({super.key});

  @override
  State<DrinkListPage> createState() => _DrinkListPageState();
}

class _DrinkListPageState extends State<DrinkListPage> {

var drinkMenu = <MenuItem> [
  
    MenuItem(name: 'Coca Cola', photo: 'assets/drinkImages/coca_Cola.png', price: 80.0 ),
    MenuItem(name: 'Fanta', photo: 'assets/drinkImages/fanta.png', price: 70.0),
    MenuItem(name: 'İce Tea', photo: 'assets/drinkImages/ice_tea.png', price: 85.0),
    MenuItem(name: 'Limonata', photo: 'assets/drinkImages/limonata.png', price: 75.0),
    MenuItem(name: 'Şalgam', photo: 'assets/drinkImages/salgam.png', price: 65.0),
    MenuItem(name: 'Sprite', photo: 'assets/drinkImages/sprite.png', price: 60.0),
    MenuItem(name: 'Cappy Karışık', photo: 'assets/drinkImages/cappy_karisik.png', price: 100.0),
    MenuItem(name: 'Cappy Şeftali', photo: 'assets/drinkImages/cappy_seftali.png', price: 100.0),
    
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ 
         const BGImageofList(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 160, 20, 120),
            child: ListView.builder(
              itemCount: drinkMenu.length,
              itemBuilder: (context, index){
                return SizedBox(
                  height: 100,
                  child: ListTile(
                    title: Text(drinkMenu[index].name, 
                    style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 25, 
                    fontWeight: FontWeight.bold, color: Colors.white),),
                    subtitle: Text("${formatAmount(drinkMenu[index].price!)}", 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                    leading: CircleAvatar(backgroundImage: AssetImage(drinkMenu[index].photo),
                    ),
                    onTap: (){},
                  ),
                );
              
              },
            
                    ),
          ),
        ],
      ),
    );
  }
}
