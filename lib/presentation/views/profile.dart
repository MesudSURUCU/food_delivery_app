import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/views/sign_in_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Future<void> logOut() async {
    var sp = await SharedPreferences.getInstance();

    sp.remove("userName");
    sp.remove("password");

    if (!mounted) return;

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SigninPage()));
  }

  final TextEditingController _namesurnameController = TextEditingController();
  final TextEditingController _emailadressController = TextEditingController();
  final TextEditingController _telephonenumberController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PROFİL"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
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
                        decoration: const InputDecoration(
                            labelText: "Ad Soyad", hintText: "Ad Soyad"),
                      ),
                      TextFormField(
                        controller: _emailadressController,
                        decoration: const InputDecoration(
                            labelText: "E mail adres", hintText: "Email adres"),
                      ),
                      TextFormField(
                        controller: _telephonenumberController,
                        decoration: const InputDecoration(
                          labelText: "Telefon Numarası",
                          hintText: "Telefon Numarası",
                        ),
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 70)),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.location_city),
                      Text(
                        "Adreslerim",
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 70)),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.telegram),
                        Text(
                          "İletişim Tercihlerim",
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 70)),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.settings),
                      Text(
                        "Hesap Ayarları",
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 70)),
                    onPressed: () {
                      logOut();
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.exit_to_app),
                        Text(
                          " Çıkış Yap",
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
