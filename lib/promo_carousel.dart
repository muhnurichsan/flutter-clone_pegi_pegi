import 'package:flutter/material.dart';

class PromoCarousel extends StatefulWidget {
  @override
  _PromoCarouselState createState() => _PromoCarouselState();
}

class _PromoCarouselState extends State<PromoCarousel> {
  List<String> imgList = [
    "assets/images/promo1.jpg",
    "assets/images/promo2.jpg",
    "assets/images/promo3.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView.builder(
          itemBuilder: (context, index) {
            String img = imgList[index];
            return Padding(
                padding: EdgeInsets.only(right: 20, top: 10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(img)));
          },
          itemCount: imgList.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal),
    );
  }
}
