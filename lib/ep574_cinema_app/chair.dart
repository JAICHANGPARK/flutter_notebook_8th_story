
enum ReserveState{
  available,
  reserved,
  selected
}
class Chair{

  final ReserveState reserveState;

  Chair({this.reserveState = ReserveState.available})
  :assert(reserveState != null);
}