import 'package:app1/pages/CurrentOrder_Page.dart';
import 'package:app1/pages/Like_Page.dart';
import 'package:app1/pages/Pending_Page.dart';
import 'package:flutter/material.dart';


class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffF4D7D3),
            toolbarHeight: 20,
            elevation: 0.1,
            automaticallyImplyLeading: false,
            bottom: TabBar(
              indicatorColor: Color(0xff487eb0),
              tabs: [
                Tab(
                  icon: Icon(Icons.favorite_border),
                  text: "Favorite",
                ),
                Tab(
                  icon: Icon(Icons.bookmark),
                  text: "Bookmark",
                ),
                Tab(
                  icon: Icon(Icons.baby_changing_station),
                  text: "Complete Order",
                ),
              ],
              unselectedLabelColor: Colors.blueGrey,

            ),
          ),
          body:
              TabBarView(children: [LikePage(), PendingPage(), CurrentOrder()]),
        ));
  }
}
