import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/widgets/get_page.dart';
import 'package:food_delivery_app/models/food_menu_list.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

 final Order order = Order();

  final menuItems = <MenuItem>[
    MenuItem(name: 'GÜNÜN MENÜSÜ', photo: 'assets/menuImages/menu_day.png',pageName: 'MenuDayListPage'),
    MenuItem(name: 'ÇORBA', photo: 'assets/menuImages/soup_photo.png',pageName: 'SoupListPage' ),
    MenuItem(name: 'ARA SICAK', photo: 'assets/warmStarterImages/pacanga_boregi.png',pageName: 'WarmStarterListPage'),
    MenuItem(name: 'ANA YEMEK', photo: 'assets/menuImages/main_course_photo.png',pageName: 'MainCourseListPage'),
    MenuItem(name: 'TATLI', photo: 'assets/menuImages/dessert_photo.png',pageName: 'DessertListPage'),
    MenuItem(name: 'MEZE', photo: 'assets/menuImages/appetizer_photo.png',pageName: 'AppetizerListPage'),
    MenuItem(name: 'SALATA', photo: 'assets/menuImages/salad_photo.png',pageName: 'SaladListPage'),
    MenuItem(name: 'İÇECEK', photo: 'assets/menuImages/drink_photo.png',pageName: 'DrinkListPage'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        toolbarHeight: 80.0,
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.green.shade900,
        title: const Text("YEMEK SİPARİŞ MENÜSÜ", 
        style: TextStyle(color: Colors.white,
        fontSize: 20.0,)
        ),
        actions: const [
         Padding(
           padding: EdgeInsets.only(right:20.0),
           child: Icon(Icons.search, size: 30,),
         ),
        ],
        automaticallyImplyLeading: false,
        centerTitle: true,

      ),
     /*  drawer: Drawer(
        elevation: 16.0, 
        semanticLabel: 'Yan Menü', 
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Yan Menü Başlık',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Menü Öğe 1'),
              onTap: () {              
                Navigator.pop(context); 
              },
            ),
            ListTile(
              title: Text('Menü Öğe 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), */
      body: Stack(
        children: [
         Image.asset("assets/home_photo.png",
         fit: BoxFit.cover,
         height: double.infinity,
         width: double.infinity,),        
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0),
            itemCount: menuItems.length,
            itemBuilder: ((context, index) {
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  getPage(menuItems[index].pageName!)));
                },
                child: Card(
                  elevation: 5.0,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        menuItems[index].photo,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,),
                      Center(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(menuItems[index].name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            ),
          ),
        ],
      ),
    );
  }
}