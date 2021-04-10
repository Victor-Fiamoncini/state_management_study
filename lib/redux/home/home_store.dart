import 'package:state_management_study/redux/home/home_actions.dart';
import 'package:state_management_study/redux/home/home_state.dart';
import 'package:state_management_study/redux/store.dart';

final homeStore = Store<HomeAction, HomeState>(
  initialState: HomeState(),
  reducer: homeReducer,
);
