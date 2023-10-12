import 'package:fitness_center/Ekler/renkler.dart';
import 'package:flutter/material.dart';
import 'Ekranlar/giris.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          fontFamily: "Manrope",
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: renkler.ana_renk,
            ),
          ),
          colorScheme: const ColorScheme.light(
            primary: renkler.ana_renk,
            onPrimary: Colors.white,
            secondary: renkler.mor,
            onSecondary: Colors.white,
          ),
          primaryColor: renkler.ana_renk,
          primarySwatch: Colors.deepPurple,
          hintColor: renkler.ana_renk,
        ),
        debugShowCheckedModeBanner: false,
        color: renkler.arkaplan,
        home: giris(),
      ),
    );
