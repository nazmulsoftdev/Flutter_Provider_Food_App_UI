import 'package:app1/provider/Item_provider.dart';
import 'package:app1/provider/bookmark_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget BookmarkUI(BuildContext context, int index) {
  // bookmarkProvider
  var bookmarkProvider = Provider.of<BookmarkProvider>(context);

  // item Provider Context
  var itemProvide = Provider.of<ItemProvider>(context);

  return Container(
    height: 200,
    child: Card(
      elevation: 5,
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Image.asset("assets/images/" +
                    bookmarkProvider.userBookmark[index].bookmarkImg
                        .toString()),
              )),
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    bookmarkProvider.userBookmark[index].bookmarkTitle
                        .toString(),
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Price: \$100"),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart,
                            size: 35,
                            color: Colors.green,
                          )),
                      IconButton(
                          onPressed: () {
                            bookmarkProvider.deleteBookmark(index);
                          },
                          icon: Icon(
                            Icons.remove_circle_outlined,
                            size: 35,
                            color: Colors.redAccent,
                          ))
                    ],
                  )
                ],
              ))
        ],
      ),
    ),
  );
}
