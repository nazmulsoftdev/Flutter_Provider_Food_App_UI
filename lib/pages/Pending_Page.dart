import 'package:app1/UI_widget/bookmark_ui.dart';
import 'package:app1/UI_widget/empty_err.dart';
import 'package:app1/provider/Item_provider.dart';
import 'package:app1/provider/bookmark_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PendingPage extends StatelessWidget {
  const PendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // item Provider Context
    var itemProvide = Provider.of<ItemProvider>(context);

    // bookmarkProvider
    var bookmarkProvider = Provider.of<BookmarkProvider>(context);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            bookmarkProvider.userBookmark.length <= 0
                ? NotFoundPage("Not found Bookmark Item")
                : Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      physics: ScrollPhysics(),
                      itemBuilder: (_, index) {
                        return BookmarkUI(
                            context,index);
                      },
                      itemCount: bookmarkProvider.userBookmark.length,
                    ),
                  )
          ],
        ),
      )),
    );
  }
}

// Card(
// child: ListTile(
// leading: Image.asset("assets/images/" +
// bookmarkProvider.userBookmark[index].bookmarkImg
//     .toString()),
// title: Text(bookmarkProvider
//     .userBookmark[index].bookmarkTitle
//     .toString()),
// trailing: Container(
// width: 100,
// child: Row(children: [
//
// ],),
// ),
// ),
// )
