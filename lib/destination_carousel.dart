import 'package:flutter/material.dart';

class DestinationCarousel extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  List<String> imgDestination = [
    "assets/images/destination1.jpg",
    "assets/images/destination2.jpg",
    "assets/images/destination3.jpg"
  ];
  List<String> imgTitle = ["Jakarta", "Yogyakarta", "Malang"];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView.builder(
          itemBuilder: (context, index) {
            String img = imgDestination[index];
            String title = imgTitle[index];
            return Stack(children: [
              Padding(
                  padding: EdgeInsets.only(right: 20, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: Opacity(
                      opacity: 0.85,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            img,
                            height: 200,
                            width: 120,
                            fit: BoxFit.cover,
                          )),
                    ),
                  )),
              Positioned(
                child: Text("$title",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                        shadows: [
                          Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(5.0, 5.0))
                        ])),
                left: 10,
                top: 140,
              )
            ]);
          },
          itemCount: imgDestination.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal),
    );
  }
}
