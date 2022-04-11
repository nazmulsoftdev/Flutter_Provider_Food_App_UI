import 'package:app1/Screen/FoodDetails.dart';
import 'package:app1/UI_widget/SearchField.dart';
import 'package:app1/UI_widget/Titletext.dart';
import 'package:app1/UI_widget/FoodCollection.dart';
import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Food Image List
    List<String> foodImage = [
      'food1.png',
      'food2.png',
      'food3.png',
      'food4.png',
      'food5.png',
      'food6.png',
      'food7.png',
      'food8.png',
      'food9.png',
      'food10.png'
    ];

    // Food Name List
    List<String> foodName = [
      'WAFFLE FRIES',
      'DOUBLE IN-N-OUT',
      'FRIES MCDONALD\'S',
      'CHICKEN POPEYES',
      'CHICKEN SANDWICH ',
      'CURLY FRIES',
      ' BLIZZARD',
      'FROSTY',
      'MCFLURRY',
      'BACON'
    ];

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        title: Text(
          "FoodIn",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>FoodDetails()));
              },
              icon: Icon(
                Icons.shopping_basket_rounded,
                color: Colors.orangeAccent,
              ))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SearchBar(),
              SizedBox(
                height: 12,
              ),
              TitleHead("Popular today"),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 310.0,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 30.0,
                    ),
                    itemBuilder: (_, index) {
                      return FoodCollection(
                          foodName, foodImage, index, context);
                      ;
                    },
                    itemCount: foodName.length,
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
