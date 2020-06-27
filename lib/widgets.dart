import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PromoIcons extends StatelessWidget {
  final String assetName;
  PromoIcons({this.assetName});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      height: 20,
      width: 20,
      child: Image.asset(assetName),
    );
  }
}

class Modes extends StatelessWidget {
  final Color background;
  final int flexSize;
  final double mgLeft, mgRight, mgTop, mgBottom;
  final String modeName, assetImage, buttonAsset;
  final Function openMode;

  Modes(
      {this.background,
      this.flexSize,
      this.mgLeft,
      this.mgRight,
      this.mgTop,
      this.mgBottom,
      this.modeName,
      this.assetImage,
      this.buttonAsset,
      this.openMode});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexSize,
      child: GestureDetector(
        onTap: openMode,
        child: Container(
          margin: EdgeInsets.only(
              top: mgTop, left: mgLeft, right: mgRight, bottom: mgBottom),
          width: MediaQuery.of(context).size.width * 0.5 - 45,
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        modeName,
                        style: TextStyle(
                          fontFamily: "Josefin",
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(assetImage),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 15,
                bottom: 15,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Image.asset(buttonAsset),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  final List<String> swipeData;

  Appbar(this.swipeData);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: 60,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  swipeData[index],
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: "Josefin",
                      fontWeight: FontWeight.bold),
                );
              },
              itemCount: swipeData.length,
              pagination: new SwiperPagination(alignment: Alignment.bottomLeft),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Container(
                  height: 25,
                  width: 30,
                  child: Image.asset("assets/images/stats.png"),
                ),
                SizedBox(
                  width: 40,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/images/exit.png"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ModeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/coltri.png"),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            child: Image.asset("assets/images/trithin.png"),
                          ),
                          Positioned(
                            top: 50,
                            left: 40,
                            child: Text(
                              "30",
                              style: TextStyle(
                                fontFamily: "Josefin",
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "30 min",
                        style: TextStyle(
                          fontFamily: "Josefin",
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.all(3),
                              padding: EdgeInsets.only(bottom: 2),
                              height: 25,
                              width: 20,
                              child: Image.asset("assets/images/circle.png"),
                            ),
                            Text(
                              "PLAY",
                              style: TextStyle(
                                fontFamily: "Josefin",
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  child: Image.asset("assets/images/clock.png"),
                ),
                Container(
                  height: 20,
                  width: 20,
                  child: Image.asset("assets/images/equalizer.png"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
