import 'package:flutter/foundation.dart';

class CinemaProvider with ChangeNotifier{

  String _rowSelected = "";
  List<int> _columnSelected = [];

  String get rowSelected => _rowSelected;
  void setRowSelected(String s){
    _rowSelected = s;
    notifyListeners();
  }

  List<int> get columnSelected => _columnSelected;

  void addSelectedChair(int column){
    _columnSelected.add(column);
  }
  
  void removeSelectedChair(int column){

  }

}