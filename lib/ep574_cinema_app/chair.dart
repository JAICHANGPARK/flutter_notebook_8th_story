
enum ReserveState{
  available,
  reserved,
  selected
}
class Chair{
   ReserveState reserveState;
  Chair({this.reserveState = ReserveState.available})
  :assert(reserveState != null);
}