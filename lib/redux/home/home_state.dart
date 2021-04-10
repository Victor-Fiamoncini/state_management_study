import 'package:state_management_study/redux/home/home_actions.dart';

class HomeState {
  final int value;

  HomeState({this.value = 0});
}

HomeState homeReducer(HomeState state, HomeAction action) {
  switch (action) {
    case HomeAction.increment:
      return HomeState(value: state.value + 1);

    case HomeAction.decrement:
      return HomeState(value: state.value - 1);

    default:
      return state;
  }
}
