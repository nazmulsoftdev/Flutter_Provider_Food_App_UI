import 'package:app1/provider/completeOrder_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget CompleteOrderUI(BuildContext context, int index) {
  var completeProvider = Provider.of<Complete_OrderProvider>(context);
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
                    completeProvider.currentOrder[index].orderImg.toString()),
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
                    completeProvider.currentOrder[index].orderName.toString(),
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Item: ${completeProvider.currentOrder[0].orderItem.toString()}"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Price: \$ ${completeProvider.currentOrder[0].orderItem * 100}"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(completeProvider.currentOrder[0].orderTime
                          .toString()),
                      IconButton(
                          onPressed: () {
                            completeProvider.removeOrder(index);
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
