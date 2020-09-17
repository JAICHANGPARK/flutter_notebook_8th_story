import 'package:flutter/foundation.dart';

class CinemaProvider with ChangeNotifier{

  String _rowSelected = "";

  String get rowSelected => _rowSelected;
  void setRowSelected(String s){
    _rowSelected = s;
    notifyListeners();
  }

}