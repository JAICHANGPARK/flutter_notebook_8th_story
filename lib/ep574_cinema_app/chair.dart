enum ReserveState { available, reserved, selected }

class Chair {
  ReserveState reserveState;
  int rowNum;

  Chair(this.rowNum, {this.reserveState = ReserveState.available}) : assert(reserveState != null);
}
