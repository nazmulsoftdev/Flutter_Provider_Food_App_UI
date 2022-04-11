import 'package:app1/Screen/FoodOrder.dart';
import 'package:app1/provider/favorite_Provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget FoodCollection(foodName, foodImage, index, BuildContext context) {
  var favProvider = Provider.of<FavoriteProvider>(context);


  return Container(
    child: InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => OrderScreen(
                    itemImage: foodImage[index], itemTitle: foodName[index])));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 3,
        child: Container(
          width: 200,
          height: 190,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  left: 30,
                  top: -30,
                  child: Image.asset(
                    "assets/images/" + foodImage[index].toString(),
                    width: 90,
                    height: 90,
                  )),
              Positioned(
                  top: 70, left: 10, child: Text(foodName[index].toString())),
              Positioned(
                  top: 100,
                  left: 10,
                  child: IconButton(
                      onPressed: () {
                        favProvider.AddFavoriteAc(foodImage[index].toString(),
                            foodName[index].toString());
                      },
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.brown,
                      ))),
              Positioned(
                  top: 110,
                  left: 100,
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_half,
                          color: Colors.greenAccent,
                        ),
                        Text("4.5")
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    ),
  );
}
