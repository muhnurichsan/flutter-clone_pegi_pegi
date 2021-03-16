import 'package:flutter/material.dart';

class InfoPentingCarousel extends StatelessWidget {
  List<String> imgInfo = [
    "assets/images/info1.jpg",
    "assets/images/info2.jpg",
    "assets/images/info3.jpg",
  ];
  List<String> descriptions = [
    "Aturan Terbang Baru",
    "Informasi Pengajuan \n& Reschedule",
    "Promo Gila-Gilaan"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ListView.builder(
          itemBuilder: (context, index) {
            String img = imgInfo[index];
            String description = descriptions[index];
            return Padding(
                padding: EdgeInsets.only(right: 10, top: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)),
                        child: Image.asset(
                          img,
                          width: MediaQuery.of(context).size.width / 2,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text("$description"))
                    ],
                  ),
                ));
          },
          itemCount: imgInfo.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal),
    );
  }
}
