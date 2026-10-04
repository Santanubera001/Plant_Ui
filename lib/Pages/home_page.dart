import 'package:flutter/material.dart';
import 'package:plant_ui/Pages/colors.dart';
import 'package:plant_ui/Widgets/bold_text.dart';
import 'package:plant_ui/Widgets/light_text.dart';
import 'package:plant_ui/Widgets/Tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: mainColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: mainColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
                color: mainColor,
              ),
              label: ""),
        ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      child: Container(
                          height: 240,
                          width: double.maxFinite,
                          color: mainColor)),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset("assets/icons/menu.png"),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 60, right: 20, left: 20),
                    child: Row(
                      children: [
                        BoldText(
                          "Hi Uishopy!",
                          size: 30,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Image.asset("assets/images/logo.png"),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 205, left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: mainColor.withOpacity(0.3),
                                offset: Offset(0, 10),
                                blurRadius: 20)
                          ]),
                      child: Row(
                        children: [
                          Container(
                              height: 70,
                              width: 300,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    label: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 10),
                                      child: LightText(
                                        "Search",
                                        color: mainColor.withOpacity(0.5),
                                      ),
                                    ),
                                    border: InputBorder.none),
                              )),
                          Container(
                              height: 70,
                              width: 90,
                              child: Image.asset("assets/icons/search.png")),
                        ],
                      ),
                      width: double.maxFinite,
                      height: 70,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        BoldText("Recommended"),
                        Spacer(),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 30,
                              width: 70,
                              color: mainColor,
                              child: Center(
                                  child: BoldText("More", color: Colors.white)),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 270,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Tile(
                              ImagePath: "assets/images/image_1.png",
                              Price: "\$400",
                              Name: "SAMANTA",
                              Country: "RUSSIA"),
                          SizedBox(width: 20),
                          Tile(
                            ImagePath: "assets/images/image_2.png",
                            Price: "\$540",
                            Name: "AGLICIA",
                            Country: "RUSSIA",
                          ),
                          SizedBox(width: 20),
                          Tile(
                            ImagePath: "assets/images/image_3.png",
                            Price: "\$500",
                            Name: "PUM",
                            Country: "RUSSIA",
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        BoldText("Featured Plants"),
                        Spacer(),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 30,
                              width: 70,
                              color: mainColor,
                              child: Center(
                                  child: BoldText("More", color: Colors.white)),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 20,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/bottom_img_1.png"))),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 20,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/bottom_img_2.png"))),
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
      ),
    );
  }
}
