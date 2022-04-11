import 'package:flutter/material.dart';

Widget OrderSelect(int itemCount, void Function(int newValue) decrementItemAc,
    void Function(int newValue) incrementItemAc) {
  int price = 100;
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    decrementItemAc(itemCount - 1);
                  },
                  icon: Icon(Icons.horizontal_rule)),
              Text(itemCount < 0 ? "0" : itemCount.toString()),
              IconButton(
                  onPressed: () {
                    incrementItemAc(itemCount + 1);
                  },
                  icon: Icon(Icons.add)),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Text(
                "Price: \$100",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Total: \$ ${itemCount < 0 ? "0" : price * itemCount}",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              )
            ],
          ),
        )
      ],
    ),
  );
}
