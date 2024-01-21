import 'dart:math';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/components/bg_image_oflist.dart';


class MenuDayListPage extends StatelessWidget {

  final List<String> soupList = ['Bal Kabağı Çorbası','Brokoli Çorbası','Mantar Çorbası','Ezogelin Çorbası',
  'Yayla Çorbası','Domates Çorbası','Paça Çorbası','Patates Çorbası','Tarhana Çorbası', 'Köfteli Çorba'];
  final List<String> warmStarterList = ['Kabak Kızartması','Karides Güveç','Paçanga Böreği','Mantar Graten',
  'Patates Kroket','Patlıcan Sarma','Sigara Böreği','Kaburga Mısır','Karnabahar Pane','Tavuklu Börek'];
  final List<String> maincourseList = ['Akçaabat Köftesi','Fajita','Fırında Makarna','Hamburger','İzmir Köfte',
  'Limonlu Levrek','Mantarlı Bonfile','Sebzeli Tavuk Sote','Soslu Tavuk Kanadı','Tavuk Pirzola'];
  final List<String> dessertList = ['Cheesecake','Çilekli Diyet Kek ','Elmalı Tatlı','Havuç Tatlısı',
  'Islak Kek','Kurabiye','Muzlu Pancake','Sütlaç','Tarçınlı İncir Uyutması','Yulaflı Çikolatalı Tatlı'];
  final List<String> appetizerList = ['Acılı Ezme', 'Ajvar','Biber Kızartması','Fava','Haydari',
 'Kalamar','Mantar Gömme','Bal Kabaklı Humus','Kereviz Mezesi'];
  final List<String> saladList = ['Detoks Salata','Endivyen Salatası','Hellimli Salata','Kaşık Salatası','Kerevizli Tomtom',
 'Mısırlı Salata','Sezar Salata','Tavuklu Salata','Ton Balıklı Salata'];

   MenuDayListPage({super.key});



  String getRandomMenuItem(List<String> itemList) {
    final random = Random();
    return itemList[random.nextInt(itemList.length)];
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ 
        const  BGImageofList(),
          Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Çorba: ${getRandomMenuItem(soupList)}', style: 
             const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
            const  SizedBox(height: 20,),
               Text('Ara Sıcak: ${getRandomMenuItem(warmStarterList)}', style: 
             const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
             const SizedBox(height: 20,),
              Text('Ana Yemek: ${getRandomMenuItem(maincourseList)}', style:
             const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
             const SizedBox(height: 20,),
              Text('Tatlı: ${getRandomMenuItem(dessertList)}', style: 
             const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
             const SizedBox(height: 20,),
              Text('Meze: ${getRandomMenuItem(appetizerList)}', style: 
             const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
             const SizedBox(height: 20,),
              Text('Salata: ${getRandomMenuItem(saladList)}', style: 
             const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
