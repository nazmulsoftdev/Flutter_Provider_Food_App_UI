import 'package:app1/UI_widget/empty_err.dart';
import 'package:app1/provider/favorite_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LikePage extends StatelessWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var favProvider = Provider.of<FavoriteProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              favProvider.UserFavorite.length<=0? NotFoundPage("Not found Favorite Item"):
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return Card(
                      child: ListTile(
                        leading: Image.asset("assets/images/" +
                            favProvider.UserFavorite[index].favoriteImg
                                .toString()),
                        title: Text(favProvider.UserFavorite[index].favoriteName
                            .toString()),
                        trailing: IconButton(
                            onPressed: () {
                              favProvider.DeleteFavoriteAc(index);
                            },
                            icon: Icon(
                              Icons.remove_circle_outlined,
                              color: Colors.redAccent,
                            )),
                      ),
                    );
                  },
                  itemCount: favProvider.UserFavorite.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


