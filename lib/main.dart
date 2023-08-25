import 'package:fitness_center/Ekler/renkler.dart';
import 'package:flutter/material.dart';
import 'Ekranlar/giris.dart';

void main() => runApp(uygulama());

class uygulama extends StatefulWidget {

  @override
  State<uygulama> createState() => _uygulamaState();
}

class _uygulamaState extends State<uygulama> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Manrope"),
      debugShowCheckedModeBanner: false,
      color: ana_renkler.arkaplan,
      home: giris(),
    );
  }
}

