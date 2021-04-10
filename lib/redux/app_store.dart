import 'package:state_management_study/redux/store.dart';

enum AppAction { increment, decrement }

class AppState {
  final int value;

  AppState({this.value = 0});
}

AppState _reducer(AppState state, AppAction action) {
  switch (action) {
    case AppAction.increment:
      return AppState(value: state.value + 1);

    case AppAction.decrement:
      return AppState(value: state.value - 1);

    default:
      return state;
  }
}

final appStore = Store<AppAction, AppState>(
  initialState: AppState(),
  reducer: _reducer,
);
