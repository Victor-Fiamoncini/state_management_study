import 'package:bloc/bloc.dart';

enum HomeEvent { increment, decrement }

class HomeBloc extends Bloc<HomeEvent, int> {
  HomeBloc() : super(0);

  @override
  Stream<int> mapEventToState(HomeEvent event) async* {
    if (event == HomeEvent.increment) {
      yield state + 1;
    } else {
      yield state - 1;
    }
  }
}
