enum ReserveState { available, reserved, selected }

class Chair {
  ReserveState reserveState;
  int rowNum;
  int cNum;

  Chair(this.rowNum, this.cNum, {this.reserveState = ReserveState.available}) : assert(reserveState != null);
}

List<Chair> chairRow1 = [
  Chair(1,1,reserveState: ReserveState.reserved),
  Chair(1,2,reserveState: ReserveState.available),
  Chair(1,3,reserveState: ReserveState.available),
  Chair(1,4,reserveState: ReserveState.available),
  Chair(1,5,reserveState: ReserveState.reserved),
  Chair(1,6,reserveState: ReserveState.available),
  Chair(1,7,reserveState: ReserveState.available),
  Chair(1,8,reserveState: ReserveState.available),
];