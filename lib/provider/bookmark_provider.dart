import 'package:app1/model/bookmark_model.dart';
import 'package:flutter/cupertino.dart';

class BookmarkProvider extends ChangeNotifier {
  List<BookmarkModel> userBookmark = [];

  // this action for add bookmark
  addBookmarkAc(bookmarkImg, bookmarkTitle) {
    var userBook = new BookmarkModel(
        bookmarkImg: bookmarkImg, bookmarkTitle: bookmarkTitle);
    userBookmark.add(userBook);
    notifyListeners();
  }

  deleteBookmark(index) {
    userBookmark.removeAt(index);
    notifyListeners();
  }
}
