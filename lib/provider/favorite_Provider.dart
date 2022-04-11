import 'package:flutter/cupertino.dart';

import '../model/favorite_model.dart';

class FavoriteProvider extends ChangeNotifier {
  List<FavoriteModel> UserFavorite = [];

  AddFavoriteAc(favoriteImg, favoriteName) {
    var favTodos =
        new FavoriteModel(favoriteImg: favoriteImg, favoriteName: favoriteName);
    UserFavorite.add(favTodos);
    notifyListeners();
  }

  DeleteFavoriteAc(index) {
    UserFavorite.removeAt(index);
    notifyListeners();
  }
}
