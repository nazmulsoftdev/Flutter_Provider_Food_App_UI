import 'package:flutter/material.dart';

Future DialogPopUp(BuildContext context, itemImage, itemTitle) {
  return showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text("Successfully Complete"),
          content: Container(
            height: 200,
            child: Column(
              children: [
                Image.asset("assets/images/completeOrder.png"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/" + itemImage.toString(),
                        width: 50,
                        height: 50,
                      ),
                      Text(itemTitle.toString())
                    ],
                  ),
                )
              ],
            ),
          ),
          actions: [],
        );
      });
}
