import 'package:fitness_center/Ekler/renkler.dart';
import 'package:flutter/material.dart';

class egitmenler_tab extends StatefulWidget {
  @override
  State<egitmenler_tab> createState() => _egitmenler_tabState();
}

class _egitmenler_tabState extends State<egitmenler_tab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(style: TextStyle(color: renkler.beyaz),"Favori Eğitmenlerim"),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: renkler.koyu,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 160,
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.account_circle_rounded,
                        color: renkler.beyaz,
                        size: 65,
                      ),
                      Text(style: TextStyle(color: renkler.beyaz,fontSize: 15 ),"Lorem Ipsum"),
                      Text(style: TextStyle(color: renkler.beyaz,fontSize: 10 ),"Fitness Antrenörü"),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: renkler.koyu,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 160,
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.account_circle_rounded,
                        color: renkler.beyaz,
                        size: 65,
                      ),
                      Text(style: TextStyle(color: renkler.beyaz,fontSize: 15 ),"Lorem Ipsum"),
                      Text(style: TextStyle(color: renkler.beyaz,fontSize: 10 ),"Muay Thai Eğitmeni"),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: renkler.koyu,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 160,
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.account_circle_rounded,
                        color: renkler.beyaz,
                        size: 65,
                      ),
                      Text(style: TextStyle(color: renkler.beyaz,fontSize: 15 ),"Lorem Ipsum"),
                      Text(style: TextStyle(color: renkler.beyaz,fontSize: 10 ),"Eğitmen İsmi"),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: renkler.koyu,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 160,
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.account_circle_rounded,
                        color: renkler.beyaz,
                        size: 65,
                      ),
                      Text(style: TextStyle(color: renkler.beyaz,fontSize: 15 ),"Lorem Ipsum"),
                      Text(style: TextStyle(color: renkler.beyaz,fontSize: 10 ),"Eğitmen İsmi"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(style: TextStyle(color: renkler.beyaz),"Tüm Eğitmenler"),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.account_circle_rounded,color: renkler.beyaz,size: 45,),
                  title: Text(style: TextStyle(color: renkler.beyaz),"Lorem ipsum"),
                  subtitle: Text("Dolor sit amet" + " • " + "5 Trainings", style: TextStyle(color: renkler.azkoyu)),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}