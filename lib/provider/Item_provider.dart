import 'package:flutter/widgets.dart';

class ItemProvider extends ChangeNotifier {
  int itemCount;

  ItemProvider({required this.itemCount});

  void IncrementItemAc(int newValue) {
    itemCount = newValue;

    notifyListeners();
  }

  void DecrementItemAc(int newValue) {
    itemCount = newValue;

    notifyListeners();
  }
}
