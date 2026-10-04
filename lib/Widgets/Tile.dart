import 'package:flutter/material.dart';
import 'package:plant_ui/Pages/colors.dart';
import 'package:plant_ui/Widgets/bold_text.dart';
import 'package:plant_ui/Widgets/light_text.dart';
class Tile extends StatelessWidget {
  Tile({super.key,required this.ImagePath,required this.Price,required this.Name,required this.Country});

  String ImagePath;
  String Price;
  String Name;
  String Country;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                offset: Offset(0, 10),
                color: mainColor.withOpacity(0.2))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(13)),
      height: 290,
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImagePath,)),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Row(
              children: [
                BoldText(
                    Name,
                  size: 17,
                ),
                Spacer(),
                LightText(Price,color: mainColor,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: BoldText(Country,color: mainColor.withOpacity(0.4)),
          )
        ],
      ),
    );
  }
}

