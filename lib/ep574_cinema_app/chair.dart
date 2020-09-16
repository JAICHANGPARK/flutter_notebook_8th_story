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









