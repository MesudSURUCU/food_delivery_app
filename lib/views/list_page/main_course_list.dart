import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/widgets/bg_image.dart';
import 'package:food_delivery_app/models/food_menu_list.dart';
import 'package:food_delivery_app/models/format_amount.dart';

class MainCourseListPage extends StatefulWidget {
  const MainCourseListPage({super.key});

  @override
  State<MainCourseListPage> createState() => _MainCourseListState();
}

class _MainCourseListState extends State<MainCourseListPage> {

   var mainCourserMenu = <MenuItem> [
    MenuItem(name: 'Akçaabat Köftesi', photo: 'assets/mainCourseImages/akcaabat_koftesi.png', price: 80.0 ),
    MenuItem(name: 'Fajita', photo: 'assets/mainCourseImages/fajita.png', price: 70.0),
    MenuItem(name: 'Fırında Makarna', photo: 'assets/mainCourseImages/firin_makarna.png', price: 85.0),
    MenuItem(name: 'Hamburger', photo: 'assets/mainCourseImages/hamburger.png', price: 75.0),
    MenuItem(name: 'İzmir Köfte', photo: 'assets/mainCourseImages/izmir_kofte.png', price: 65.0),
    MenuItem(name: 'Limonlu Levrek', photo: 'assets/mainCourseImages/limonlu_levrek.png', price: 60.0),
    MenuItem(name: 'Mantarlı Bonfile', photo: 'assets/mainCourseImages/mantarli_bonfile.png', price: 100.0),
    MenuItem(name: 'Sebzeli Tavuk Sote', photo: 'assets/mainCourseImages/sebzeli_tavuk_sote.png', price: 100.0),
    MenuItem(name: 'Soslu Tavuk Kanadı', photo: 'assets/mainCourseImages/soslu_tavuk_kanadi.png', price: 100.0),
    MenuItem(name: 'Tavuk Pirzola', photo: 'assets/mainCourseImages/tavuk_pirzola.png', price: 100.0),
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
              itemCount: mainCourserMenu.length,
              itemBuilder: (context, index){
                return SizedBox(
                  height: 100,
                  child: ListTile(
                    title: Text(mainCourserMenu[index].name, 
                    style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 25, 
                    fontWeight: FontWeight.bold, color: Colors.white),),
                    subtitle: Text("${formatAmount(mainCourserMenu[index].price!)}", 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
                    leading: CircleAvatar(backgroundImage: AssetImage(mainCourserMenu[index].photo),
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
