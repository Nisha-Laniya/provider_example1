import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
    int count = 0;
    int get counter => count;

    void setCount() {
      count++;
      notifyListeners();
    }
}