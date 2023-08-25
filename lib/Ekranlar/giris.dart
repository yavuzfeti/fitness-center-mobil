import 'package:fitness_center/Bilesenler/ust_alt_bar.dart';
import 'package:flutter/material.dart';
import 'package:fitness_center/Ekler/renkler.dart';

class giris extends StatefulWidget {
  @override
  State<giris> createState() => _girisState();
}

class _girisState extends State<giris> {

  void _girise_git()
  {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ust_alt_bar()));
  }

  FocusNode _odak_1 = FocusNode();
  FocusNode _odak_2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ana_renkler.koyu,
        body: Padding(
          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: Form(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.logo_dev,color: ana_renkler.beyaz,size: 75,),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(style: TextStyle(color: ana_renkler.beyaz,fontSize: 25),"Fitness Center"),
                ),
                TextFormField(
                  focusNode: _odak_1,
                  autofocus: true,
                  decoration: InputDecoration(
                      prefixIconColor: ana_renkler.koyu,
                      prefixIcon: Icon(Icons.email),
                    filled: true,
                    fillColor: ana_renkler.beyaz,
                    hintText: "E-postanızı giriniz",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                  style: TextStyle(fontSize: 16),
                  onEditingComplete: () {
                    _odak_1.unfocus();
                    FocusScope.of(context).requestFocus(_odak_2);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  focusNode: _odak_2,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIconColor: ana_renkler.koyu,
                      prefixIcon: Icon(Icons.key),
                    filled: true,
                    fillColor: ana_renkler.beyaz,
                    hintText: "Şifrenizi giriniz",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        TextButton(
                          onPressed:
                              null, //Buraya şifremi unuttum fonksiyonu gelecek
                          child: Text(style: TextStyle(color: ana_renkler.beyaz),"Şifremi unuttum !"),
                        )
                      ],
                    ),
                SizedBox(
                  width: 125,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _girise_git,
                    style: ButtonStyle(
                        foregroundColor: const MaterialStatePropertyAll(
                            ana_renkler.beyaz),
                        backgroundColor:
                            const MaterialStatePropertyAll(ana_renkler.koyu),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                              color: ana_renkler.azkoyu),
                        ))),
                    child: const Text(style: TextStyle(fontSize: 16),"Giriş yap"),
                  ),
                )
              ],
            ),
        ),
        ),
    );
  }
}
