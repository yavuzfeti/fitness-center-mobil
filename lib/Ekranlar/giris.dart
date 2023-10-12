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

    InputDecoration edt_decor(Icon icon,String hint) {
      return InputDecoration(
        prefixIconColor: renkler.ana_renk,
          prefixIcon: icon,
          hintText: hint,
          hintStyle: TextStyle(
            color: renkler.beyaz,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: renkler.azkoyu,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: renkler.ana_renk,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: renkler.ana_renk,),
            borderRadius: BorderRadius.circular(10),
          ));
    }

    return Scaffold(
        backgroundColor: renkler.arkaplan,
        body: Padding(
          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.logo_dev,color: renkler.ana_renk,size: 125,),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(style: TextStyle(color: renkler.beyaz,fontSize: 28),"Fitness Center"),
                ),
                TextField(
                  focusNode: _odak_1,
                  autofocus: true,
                  decoration: edt_decor(Icon(Icons.email_rounded),"Kullanıcı adınızı girin"),
                  style: TextStyle(fontSize: 16),
                  onEditingComplete: () {
                    _odak_1.unfocus();
                    FocusScope.of(context).requestFocus(_odak_2);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  focusNode: _odak_2,
                  obscureText: true,
                  decoration: edt_decor(Icon(Icons.key_rounded), "Şifrenizi girin"),
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {}, //Buraya şifremi unuttum fonksiyonu gelecek
                          child: Text(style: TextStyle(color: renkler.beyaz),"Şifremi unuttum !"),
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
                            renkler.beyaz),
                        backgroundColor:
                            const MaterialStatePropertyAll(renkler.koyu),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                              color: renkler.ana_renk),
                        ))),
                    child: const Text(style: TextStyle(fontSize: 16),"Giriş yap"),
                  ),
                )
              ],
            ),
        ),
    );
  }
}
