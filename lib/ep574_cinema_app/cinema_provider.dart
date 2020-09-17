import 'package:flutter/foundation.dart';
import 'package:flutter_notebook_8th_story/ep574_cinema_app/chair.dart';

class CinemaProvider with ChangeNotifier{

  String _rowSelected = "";
  List<Chair> _columnSelected = Map<int, int>();

  String get rowSelected => _rowSelected;
  void setRowSelected(String s){
    _rowSelected = s;
    notifyListeners();
  }

  Map<int, int> get columnSelected => _columnSelected;

  void addSelectedChair(int row){
    _columnSelected[] = ;
  }

  void removeSelectedChair(int column){

  }

}