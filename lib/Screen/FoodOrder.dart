import 'dart:async';

import 'package:app1/UI_widget/Dialog_ui.dart';
import 'package:app1/UI_widget/Order_Select.dart';
import 'package:app1/const/Bigtext.dart';

import 'package:app1/provider/Item_provider.dart';
import 'package:app1/provider/bookmark_provider.dart';
import 'package:app1/provider/completeOrder_Provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:date_time_format/date_time_format.dart';

class OrderScreen extends StatelessWidget {
  final itemImage;
  final itemTitle;

  const OrderScreen({Key? key, this.itemImage, this.itemTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MediaQuery Height and Width
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    // item Provider Context
    var itemProvide = Provider.of<ItemProvider>(context);

    // bookmarkProvider

    var bookmarkProvider = Provider.of<BookmarkProvider>(context);

    //Order Complete Provider

    var completeProvider = Provider.of<Complete_OrderProvider>(context);

    // Data and Time for complete order

    final dateTime = DateTime.now();
    var orderDataTime = dateTime.format(DateTimeFormats.american);

    return Scaffold(
      backgroundColor: Color(0xffF9DAD7),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: _width,
              height: _height,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: _width,
                    height: _height / 3,
                    color: Color(0xffF9DAD7),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                            "assets/images/" + itemImage.toString())),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: _width,
                      height: _height / 1.5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                itemTitle.toString(),
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w200),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                BigText.bigText1,
                                style: TextStyle(fontSize: 14, height: 1.5),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              OrderSelect(
                                  itemProvide.itemCount,
                                  itemProvide.DecrementItemAc,
                                  itemProvide.IncrementItemAc),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: IconButton(
                                        onPressed: () {
                                          bookmarkProvider.addBookmarkAc(
                                              itemImage.toString(),
                                              itemTitle.toString());
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(
                                          Icons.bookmark,
                                          color: Color(0xfff8a5c2),
                                          size: 50,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      height: 50,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            if (itemProvide.itemCount <= 0) {
                                              return null;
                                            } else {
                                              DialogPopUp(context, itemImage,
                                                  itemTitle);
                                              completeProvider.addCompleteOrder(
                                                  itemTitle,
                                                  itemImage,
                                                  itemProvide.itemCount,
                                                  orderDataTime);

                                              Timer(Duration(seconds: 3),
                                                  () => Navigator.pop(context));
                                            }
                                            Timer(Duration(seconds: 4),
                                                () => Navigator.pop(context));
                                          },
                                          child: Text(itemProvide.itemCount <= 0
                                              ? "Please Select Item"
                                              : "Confirm Order"),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Color(0xffF5A278)),
                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xfff5f6fa),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
