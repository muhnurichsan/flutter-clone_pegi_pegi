import 'package:flutter/material.dart';

class BannerPegiPagi extends StatefulWidget {
  @override
  _BannerPegiPagiState createState() => _BannerPegiPagiState();
}

class _BannerPegiPagiState extends State<BannerPegiPagi> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.black,
          child: Opacity(
            opacity: 0.7,
            child: Image.asset(
              "assets/images/banner-penida.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              height: 205,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.train,
                      color: Colors.yellow.shade700,
                      size: 40,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 2),
                        color: Colors.white)),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("KERETA API",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            shadows: [
                              Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(5.0, 5.0))
                            ]))),
              ],
            ),
            Column(
              children: [
                Container(
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.airplanemode_on_sharp,
                      color: Colors.red.shade200,
                      size: 40,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 2),
                        color: Colors.white)),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("PESAWAT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            shadows: [
                              Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(5.0, 5.0))
                            ]))),
              ],
            ),
            Column(
              children: [
                Container(
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.hotel,
                      color: Colors.yellow.shade700,
                      size: 40,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 2),
                        color: Colors.white)),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("HOTEL",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            shadows: [
                              Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(5.0, 5.0))
                            ]))),
              ],
            ),
            Column(
              children: [
                Container(
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.directions_bus_sharp,
                      color: Colors.orange.shade700,
                      size: 40,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 2),
                        color: Colors.white)),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("BUS & \nTRAVEL",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            shadows: [
                              Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(5.0, 5.0))
                            ]))),
              ],
            )
          ],
        )
      ],
    );
  }
}
