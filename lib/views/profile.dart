import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

 final TextEditingController _namesurnameController = TextEditingController();
  final TextEditingController _emailadressController = TextEditingController();
  final TextEditingController _telephonenumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFİL"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/placeholder.png",
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                           TextFormField(
                          controller: _namesurnameController,
                          decoration: InputDecoration(labelText: "Ad Soyad",
                          hintText: "Ad Soyad"),
                        ),
                        TextFormField(
                          controller: _emailadressController,
                          decoration: InputDecoration(labelText: "E mail adres",
                          hintText: "Email adres"),
                        ),
                        TextFormField(
                          controller: _telephonenumberController,
                         decoration: InputDecoration(
                          labelText: "Telefon Numarası",
                          hintText: "Telefon Numarası",
                         ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),           
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 70)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.location_city),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "Adreslerim",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 150,),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 70)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.telegram),
                            SizedBox(width: 50,),
                            Text("İletişim Tercihlerim", style: TextStyle(fontSize: 20),),
                            SizedBox(width: 75,),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        )),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 70)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.settings),
                          SizedBox(width: 50,),
                          Text("Hesap Ayarları", style: TextStyle(fontSize: 20),),
                          SizedBox(width: 120,),
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 70)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.exit_to_app),
                            SizedBox(width: 50,),
                            Text(" Çıkış Yap", style: TextStyle(fontSize: 20),),
                            SizedBox(width: 165,),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        )),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
