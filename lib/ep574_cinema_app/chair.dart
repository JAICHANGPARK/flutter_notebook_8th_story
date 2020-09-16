enum ReserveState { available, reserved, selected }

class Chair {
  ReserveState reserveState;
  int rowNum;
  int cNum;

  Chair(this.rowNum, this.cNum, {this.reserveState = ReserveState.available}) : assert(reserveState != null);
}

List<Chair> chairRow1 = [
  Chair(1, 1, reserveState: ReserveState.reserved),
  Chair(1, 2, reserveState: ReserveState.available),
  Chair(1, 3, reserveState: ReserveState.available),
  Chair(1, 4, reserveState: ReserveState.available),
  Chair(1, 5, reserveState: ReserveState.reserved),
  Chair(1, 6, reserveState: ReserveState.available),
  Chair(1, 7, reserveState: ReserveState.available),
  Chair(1, 8, reserveState: ReserveState.available),
];

List<Chair> chairRow2 = [
  Chair(2, 1, reserveState: ReserveState.available),
  Chair(2, 2, reserveState: ReserveState.available),
  Chair(2, 3, reserveState: ReserveState.available),
  Chair(2, 4, reserveState: ReserveState.reserved),
  Chair(2, 5, reserveState: ReserveState.reserved),
  Chair(2, 6, reserveState: ReserveState.available),
  Chair(2, 7, reserveState: ReserveState.available),
  Chair(2, 8, reserveState: ReserveState.available),
  Chair(2, 9, reserveState: ReserveState.reserved),
  Chair(2, 10, reserveState: ReserveState.available),
];

List<Chair> chairRow3 = [
  Chair(3, 1, reserveState: ReserveState.available),
  Chair(3, 2, reserveState: ReserveState.available),
  Chair(3, 3, reserveState: ReserveState.available),
  Chair(3, 4, reserveState: ReserveState.reserved),
  Chair(3, 5, reserveState: ReserveState.available),
  Chair(3, 6, reserveState: ReserveState.available),
  Chair(3, 7, reserveState: ReserveState.reserved),
  Chair(3, 8, reserveState: ReserveState.available),
  Chair(3, 9, reserveState: ReserveState.available),
  Chair(3, 10, reserveState: ReserveState.available),
  Chair(3, 11, reserveState: ReserveState.available),
  Chair(3, 12, reserveState: ReserveState.available),
];
List<Chair> chairRow4 = [
  Chair(4, 1, reserveState: ReserveState.available),
  Chair(4, 2, reserveState: ReserveState.available),
  Chair(4, 3, reserveState: ReserveState.available),
  Chair(4, 4, reserveState: ReserveState.available),
  Chair(4, 5, reserveState: ReserveState.available),
  Chair(4, 6, reserveState: ReserveState.available),
  Chair(4, 7, reserveState: ReserveState.available),
  Chair(4, 8, reserveState: ReserveState.available),
  Chair(4, 9, reserveState: ReserveState.available),
  Chair(4, 10, reserveState: ReserveState.available),
  Chair(4, 11, reserveState: ReserveState.available),
  Chair(4, 12, reserveState: ReserveState.available),
  Chair(4, 13, reserveState: ReserveState.available),
  Chair(4, 14, reserveState: ReserveState.available),
];

List<Chair> chairRow5 = [
  Chair(5, 1, reserveState: ReserveState.available),
  Chair(5, 2, reserveState: ReserveState.available),
  Chair(5, 3, reserveState: ReserveState.available),
  Chair(5, 4, reserveState: ReserveState.available),
  Chair(5, 5, reserveState: ReserveState.available),
  Chair(5, 6, reserveState: ReserveState.available),
  Chair(5, 7, reserveState: ReserveState.available),
  Chair(5, 8, reserveState: ReserveState.available),
  Chair(5, 9, reserveState: ReserveState.available),
  Chair(5, 10, reserveState: ReserveState.available),
  Chair(5, 11, reserveState: ReserveState.available),
  Chair(5, 12, reserveState: ReserveState.available),
  Chair(5, 13, reserveState: ReserveState.available),
  Chair(5, 14, reserveState: ReserveState.available),
  Chair(5, 15, reserveState: ReserveState.available),
  Chair(5, 16, reserveState: ReserveState.available),
];

List<Chair> chairRow6 = [
  Chair(6, 1, reserveState: ReserveState.available),
  Chair(6, 2, reserveState: ReserveState.available),
  Chair(6, 3, reserveState: ReserveState.available),
  Chair(6, 4, reserveState: ReserveState.available),
  Chair(6, 5, reserveState: ReserveState.available),
  Chair(6, 6, reserveState: ReserveState.reserved),
  Chair(6, 7, reserveState: ReserveState.reserved),
  Chair(6, 8, reserveState: ReserveState.available),
  Chair(6, 9, reserveState: ReserveState.available),
  Chair(6, 10, reserveState: ReserveState.available),
  Chair(6, 11, reserveState: ReserveState.reserved),
  Chair(6, 12, reserveState: ReserveState.available),
  Chair(6, 13, reserveState: ReserveState.available),
  Chair(6, 14, reserveState: ReserveState.reserved),
  Chair(6, 15, reserveState: ReserveState.available),
  Chair(6, 16, reserveState: ReserveState.available),
  Chair(6, 17, reserveState: ReserveState.available),
  Chair(6, 18, reserveState: ReserveState.reserved),
];







