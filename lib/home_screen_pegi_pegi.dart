import 'package:clone_pegi_pegi/banner_pegi.dart';
import 'package:clone_pegi_pegi/destination_carousel.dart';
import 'package:clone_pegi_pegi/info_penting_carousel.dart';
import 'package:clone_pegi_pegi/promo_carousel.dart';
import 'package:flutter/material.dart';

class HomeScreenPegiPegi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Image.asset(
                "assets/images/logo-primary.png",
                width: 150,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "Hi Nur",
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 18),
              ),
            )
          ],
        ),
      ),
      body: ListView(children: [
        Column(
          children: [
            BannerPegiPagi(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Promo",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text("Lihat Semua",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ],
                  ),
                  SizedBox(height: 10),
                  PromoCarousel(),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Info Penting",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ],
                  ),
                  InfoPentingCarousel(),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Asli Lokal",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text("Lihat Semua",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ],
                  ),
                  DestinationCarousel(),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            title: Text("Pesanan"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            title: Text("Inbox"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Profil"))
        ],
      ),
    );
  }
}
