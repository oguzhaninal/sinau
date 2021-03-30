import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sinau/config/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  bool isSignupScreen = true;
  double progress = .65;
  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MainColors.backGroundColor,
      body: Stack(
        children: [
          userInfoTabBar(phoneSize),
          bottomContainer(phoneSize),
          topCard(phoneSize),
        ],
      ),
    );
  }

  userInfoTabBar(Size phoneSize) {
    return Positioned(
      top: phoneSize.height * .06,
      child: Padding(
        padding: EdgeInsets.only(
            right: phoneSize.width * .05, left: phoneSize.width * .05),
        child: Container(
          height: phoneSize.height * .08,
          width: phoneSize.width * .9,
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: phoneSize.height * .035,
                    backgroundImage: AssetImage("assets/images/pp.jpeg"),
                  ),
                  SizedBox(width: phoneSize.width * .04),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome back",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      Text(
                        "Poetri Lazuardi",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: phoneSize.width * .360,
                  ),
                  IconButton(
                      alignment: Alignment.centerRight,
                      icon: Icon(
                        Icons.notifications_none_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {})
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  topCard(Size phoneSize) {
    return Positioned(
      top: phoneSize.height * .15,
      child: Padding(
        padding: EdgeInsets.only(
            right: phoneSize.width * .05, left: phoneSize.width * .05),
        child: Container(
          width: phoneSize.width * .9,
          height: phoneSize.height * .22,
          decoration: BoxDecoration(
            color: MainColors.mainWhite,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: phoneSize.height * .011,
                left: phoneSize.width * .05,
                right: phoneSize.width * .05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      height: phoneSize.width * .17,
                      width: phoneSize.width * .17,
                      decoration: BoxDecoration(
                        color: MainColors.backGroundColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Icon(
                        FlutterIcons.cards_diamond_mco,
                        color: MainColors.diamondColor,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: phoneSize.height * .11,
                left: phoneSize.width * .05,
                right: phoneSize.width * .05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    progressInside(phoneSize),
                    progressInside(phoneSize),
                  ],
                ),
              ),
              Positioned(
                top: phoneSize.height * .165,
                left: phoneSize.width * .05,
                right: phoneSize.width * .05,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 16.0,
                  ),
                  child: Container(
                    child: LinearPercentIndicator(
                      lineHeight: phoneSize.height * .02,
                      animationDuration: 1000,
                      animateFromLastPercent: true,
                      backgroundColor: MainColors.mainGrey,
                      progressColor: Colors.green,
                      percent: progress,
                      animation: true,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  progressInside(Size phoneSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            height: phoneSize.height * .065,
            width: phoneSize.height * .065,
            decoration: BoxDecoration(
              color: MainColors.mainGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(FlutterIcons.award_faw5s)),
        Padding(
          padding: EdgeInsets.only(left: phoneSize.width * .02),
          child: Column(
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
          ),
        )
      ],
    );
  }

  bottomContainer(Size phoneSize) {
    return Positioned(
      top: phoneSize.height * .25,
      child: Stack(
        children: [
          Container(
            height: phoneSize.height * .75,
            width: phoneSize.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: MainColors.mainGrey,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  top: phoneSize.height * .17,
                  bottom: phoneSize.height * .055,
                  left: phoneSize.width * .05,
                  right: phoneSize.width * .05),
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return getRecom(phoneSize);
                },
              ),
            ),
          ),
          Positioned(
            top: phoneSize.height * .135,
            left: phoneSize.width * .05,
            child: Text(
              "Recommendation",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }

  getRecom(Size phoneSize) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: phoneSize.height * .14,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: phoneSize.height * .01),
                    child: Text(
                      "Declarative Interfaces for any Apple",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Text(
                    "Devices",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "IDR 850.000",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  SizedBox(
                    height: phoneSize.height * .012,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: MainColors.starColor,
                        size: phoneSize.height * .025,
                      ),
                      Padding(
                        padding: EdgeInsets.all(phoneSize.width * .006),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: phoneSize.height * .003,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "4.5",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14),
                          children: [
                            TextSpan(
                              text: " By Saray William ",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(phoneSize.width * .006),
                        child: CircleAvatar(
                          radius: phoneSize.height * .003,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      Text(
                        " All Level",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
              Container(
                height: phoneSize.height * .09,
                width: phoneSize.height * .09,
                decoration: BoxDecoration(
                  color: MainColors.cardBoxColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Container(
                    height: phoneSize.height * .025,
                    width: phoneSize.height * .025,
                    decoration: BoxDecoration(
                        color: MainColors.circleColor,
                        borderRadius: BorderRadius.circular(50)),
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
