import 'package:mobx/mobx.dart';

class HomeStore {
  final counter = Observable<int>(0);
  Action increment;
  Action decrement;

  HomeStore() {
    increment = Action(_increment);
    decrement = Action(_decrement);
  }

  void _increment() {
    counter.value++;
  }

  void _decrement() {
    counter.value--;
  }
}
