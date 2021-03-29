import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sinau/config/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  bool isSignupScreen = true;
  double progress = .5;
  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MainColors.backGroundColor,
      body: Stack(
        children: [
          bottomContainer(phoneSize),
          Positioned(
            top: phoneSize.height * .2,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                width: phoneSize.width * .9,
                height: phoneSize.height * .22,
                decoration: BoxDecoration(
                  color: MainColors.mainWhite,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Positioned(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Declarative Interfaces for any Apple",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "Devices",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "IDR 850.000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: MainColors.backGroundColor,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                  child: RotatedBox(
                                    quarterTurns: 2,
                                    child: Center(
                                      child: Container(
                                        height: 10,
                                        width: 10,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                progressInside(),
                                progressInside(),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 16.0, right: 12, left: 12),
                              child: LinearPercentIndicator(
                                lineHeight: 15,
                                animationDuration: 1000,
                                animateFromLastPercent: true,
                                backgroundColor: Colors.white,
                                progressColor: Colors.green,
                                percent: progress,
                                animation: true,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row progressInside() {
    return Row(
      children: [
        Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: MainColors.mainGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(FlutterIcons.award_faw5s)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Current Progress",
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey,
              ),
            ),
            Text(
              "${this.progress * 100}%",
              style: TextStyle(
                fontSize: 14,
              ),
            )
          ],
        )
      ],
    );
  }

  Positioned bottomContainer(Size phoneSize) {
    return Positioned(
      top: phoneSize.height * .3,
      child: Container(
        height: phoneSize.height,
        width: phoneSize.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: MainColors.mainGrey,
        ),
      ),
    );
  }
}
