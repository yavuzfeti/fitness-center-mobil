import 'package:fitness_center/Ekler/renkler.dart';
import 'package:fitness_center/Ekranlar/giris.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class profil extends StatefulWidget {
  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = TextStyle(
        color: renkler.beyaz, fontSize: 17);

    return Scaffold(
      backgroundColor: renkler.arkaplan,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image(image: AssetImage("lib/Ekler/resimler/resim.png")),
                Column(
                    children: [
                      Icon(
                        Icons.account_circle_rounded,
                        size: 200,
                        color: renkler.beyaz,
                      ),
                      Text(
                          style:
                              TextStyle(fontSize: 22, color: renkler.beyaz),
                          "Kullanıcı adı"),
                      Text(
                          style: TextStyle(
                              fontSize: 17, color: renkler.azkoyu),
                          "Kullanıcı e-postası"),
                    ],
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            "lib/Ekler/iconlar/profil/profili_duzenle.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            style: textStyle,
                            "Profili düzenle"),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            "lib/Ekler/iconlar/profil/bildirimler.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            style: textStyle,
                            "Bildirimler"),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        SvgPicture.asset("lib/Ekler/iconlar/profil/yardim.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            style: textStyle,
                            "Yardım"),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            "lib/Ekler/iconlar/profil/hakkinda.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            style: textStyle,
                            "Hakkında"),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => giris()));
                    },
                    child: Text(
                            style: TextStyle(
                                color: renkler.kirmizi, fontSize: 17),
                            "Oturumu Kapat"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
