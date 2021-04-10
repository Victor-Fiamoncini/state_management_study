import 'package:rx_notifier/rx_notifier.dart';

class HomeStore {
  final counter = RxNotifier<int>(0);

  void increment() {
    counter.value++;
  }
}
