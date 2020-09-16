enum ReserveState { available, reserved, selected }

class Chair {
  ReserveState reserveState;
  int rowNum;
  int cNum;

  Chair(this.rowNum, this.cNum, {this.reserveState = ReserveState.available}) : assert(reserveState != null);
}
