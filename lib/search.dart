import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sinau/config/colors.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size phoneSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MainColors.backGroundColor,
      body: Stack(
        children: [
          tabBar(phoneSize),
          Positioned(
            top: phoneSize.height * .15,
            child: Stack(
              children: [
                bottomContainer(phoneSize),
                Positioned(
                  top: phoneSize.height * .27,
                  left: phoneSize.width * .05,
                  child: Text(
                    "Recommendation Courses",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: phoneSize.width * .035,
                    ),
                  ),
                ),
                Positioned(
                  top: phoneSize.height * .105,
                  left: phoneSize.width * .05,
                  child: Text(
                    "Browser Category",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: phoneSize.width * .035,
                    ),
                  ),
                )
              ],
            ),
          ),
          textField(phoneSize),
          Positioned(
            top: phoneSize.height * .28,
            left: phoneSize.width * .05,
            right: phoneSize.width * .05,
            child: Wrap(
              spacing: phoneSize.width * .04,
              children: [
                browserButton("Technology", phoneSize),
                browserButton("Business", phoneSize),
                browserButton("Finance", phoneSize),
                browserButton("Python", phoneSize),
                browserButton("Programming", phoneSize),
                browserButton("Swift", phoneSize),
                browserButton("React Native", phoneSize),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container bottomContainer(Size phoneSize) {
    return Container(
      height: phoneSize.height * .85,
      width: phoneSize.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: MainColors.mainGrey,
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: phoneSize.height * .3,
            bottom: phoneSize.height * .055,
            left: phoneSize.width * .05,
            right: phoneSize.width * .05),
        child: ListView.builder(
          padding: EdgeInsets.all(0),
          // shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return getRecom(phoneSize);
          },
        ),
      ),
    );
  }

  textField(Size phoneSize) {
    return Positioned(
      top: phoneSize.height * .16,
      left: phoneSize.width * .05,
      right: phoneSize.width * .05,
      child: Container(
        padding: EdgeInsets.all(phoneSize.height * .01),
        child: TextField(
          cursorColor: MainColors.cardBoxColor,
          decoration: InputDecoration(
              isDense: true,
              hintStyle: TextStyle(
                color: MainColors.hintColor,
              ),
              focusColor: Colors.black,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(FlutterIcons.search1_ant, color: Colors.black),
              ),
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              hintText: "Form Placeholder"),
        ),
      ),
    );
  }

  tabBar(Size phoneSize) {
    return Positioned(
      top: phoneSize.height * .06,
      child: Padding(
        padding: EdgeInsets.only(
            right: phoneSize.width * .05, left: phoneSize.width * .05),
        child: Container(
          height: phoneSize.height * .08,
          width: phoneSize.width * .9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      FlutterIcons.chevron_left_ent,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: phoneSize.width * .04,
                    ),
                    Text("Explore", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              IconButton(
                  // alignment: Alignment.centerRight,
                  icon: Icon(
                    FlutterIcons.cart_outline_mco,
                    color: Colors.white,
                  ),
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }

  browserButton(String buttonName, Size phoneSize) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.only(
            left: phoneSize.width * .008, right: phoneSize.width * .008),
        child: Text(
          buttonName,
          style: TextStyle(fontSize: phoneSize.width * .024),
        ),
      ),
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          primary: Colors.white,
          backgroundColor: MainColors.backGroundColor),
    );
  }

  getRecom(Size phoneSize) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: phoneSize.height * .01),
                    child: Container(
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
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(phoneSize.height * .003),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Declarative Interfaces for any Apple",
                      style: TextStyle(
                        fontSize: phoneSize.width * .029,
                      ),
                    ),
                    Text(
                      "Devices",
                      style: TextStyle(fontSize: phoneSize.width * .03),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: phoneSize.height * .01),
                      child: Text(
                        "IDR 850.000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: phoneSize.width * .03),
                      ),
                    ),
                    SizedBox(
                      height: phoneSize.height * .008,
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
                                fontSize: phoneSize.width * .035),
                            children: [
                              TextSpan(
                                text: " By Saray William ",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: phoneSize.width * .03,
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
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: phoneSize.width * .033),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
