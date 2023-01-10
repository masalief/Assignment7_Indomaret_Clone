import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indo_point/widgets/grid_item.dart';

class Sponsor {
  String title;
  String image;
  Color color;
  Sponsor({required this.title, required this.color, required this.image});
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<Color> Clrs = [
    //   Color.fromARGB(255, 255, 128, 77),
    //   Color.fromARGB(255, 13, 106, 187),
    //   Color.fromARGB(255, 3, 215, 119),
    //   Color.fromARGB(255, 142, 145, 144),
    // ];

    List<Sponsor> sponsorData = [
      Sponsor(
          title: "Diskon 35% Buat Nongki",
          color: Color.fromARGB(255, 24, 174, 255),
          image: "images/indomaret.png"),
      Sponsor(
          title: "Diskon 10% Teman Malam",
          color: Color.fromARGB(255, 85, 204, 89),
          image: "images/indomaret.png"),
      Sponsor(
          title: "Diskon 15% Januari Ceria",
          color: Color.fromARGB(255, 232, 232, 60),
          image: "images/indomaret.png"),
      Sponsor(
          title: "Diskon 20% Anti Galau",
          color: Color.fromARGB(255, 255, 58, 44),
          image: "images/indomaret.png"),
    ];

    // var imageList = [
    //   "images/indomaret.png",
    //   "images/indomaret.png",
    //   "images/indomaret.png",
    //   "images/indomaret.png",
    // ];

    var iconImageList = [
      "images/anggur1.png",
      "images/anggur2.png",
      "images/soju3.png",
      "images/soju1.png",
      "images/anggur1.png",
      "images/soju3.png",
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  // padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 238, 238),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.notifications,
                      // CupertinoIcons.envelope_badge,
                      size: 25,
                    ),
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     color: Color(0xFFD4ECF7),
                //     borderRadius: BorderRadius.circular(10),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.black26,
                //         blurRadius: 4,
                //         spreadRadius: 2,
                //       ),
                //     ],
                //   ),
                //   child: Icon(
                //     CupertinoIcons.envelope_badge,
                //     size: 20,
                //     color: Colors.blueGrey,
                //   ),
                // ),
                Container(
                  width: 40,
                  height: 40,
                  // padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 238, 238),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: Icon(
                      CupertinoIcons.gift,
                      size: 25,
                    ),
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hallo, Alief Elza",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Selamat datang, Selamat Belanja",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 7),
            child: Row(
              children: [
                for (int i = 0; i < 4; i++)
                  CarouselItem(data: sponsorData[i]
                      // title: iklanData[i].title,
                      // clr: iklanData[i].color,
                      // img: iklanData[i].image,
                      ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Kebutuhan Harian dan Kupon",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Lihat Semua",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(children: [
                for (var i = 0; i < 6; i++)
                  Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 238, 238, 238),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 1,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: Image.asset(iconImageList[i]),
                    ),
                  )
              ]),
            ),
          ),
          SizedBox(height: 10),
          GridItems(),
        ],
      ),
    );
  }
}

class CarouselItem extends StatelessWidget {
  CarouselItem({super.key, required this.data});
  Sponsor data;

  // String title;
  // Color clr;
  // String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.only(left: 10),
      width: MediaQuery.of(context).size.width / 1.5,
      height: MediaQuery.of(context).size.height / 5.5,
      decoration: BoxDecoration(
        color: data.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    // siniiiiiiiiii
                  ),
                ),
                Container(
                  width: 85,
                  height: 25,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 238, 238),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "29 Jan - 30 Jan",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            data.image,
            height: 200,
            width: 170,
          ),
        ],
      ),
    );
  }
}

// tampilan beranda