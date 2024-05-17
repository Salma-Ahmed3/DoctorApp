import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbsub/Features/YourClinicc/logic/reservation_states.dart';

class ReservationCubit extends Cubit<ReservationStates> {
  ReservationCubit() : super(ReservationInitialState());
}
