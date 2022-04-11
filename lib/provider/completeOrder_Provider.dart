import 'package:app1/model/completeOrder_model.dart';
import 'package:flutter/cupertino.dart';

class Complete_OrderProvider extends ChangeNotifier {
  List<CompleteOrderModel> currentOrder = [];

  addCompleteOrder(orderName, orderImg, orderItem, orderTime) {
    var completeOrder = new CompleteOrderModel(
        orderName: orderName,
        orderImg: orderImg,
        orderItem: orderItem,
        orderTime: orderTime);
    currentOrder.add(completeOrder);
    notifyListeners();
  }

  removeOrder(index) {
    currentOrder.removeAt(index);
    notifyListeners();
  }
}
