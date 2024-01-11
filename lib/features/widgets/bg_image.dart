import 'package:flutter/material.dart';

class BGImageofList extends StatelessWidget {
  const BGImageofList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/bgofList.png',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,);
  }
}
