import 'package:flutter/cupertino.dart';

class MyState extends ChangeNotifier {
  double width = 0;
  double height = 0;

  void updateScreenSize(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    notifyListeners();
  }
}
