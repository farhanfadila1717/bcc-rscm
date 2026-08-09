import 'package:redux/redux.dart';

extension StoreExtensions<T> on Store<T> {
  void dispatches(List<dynamic> actions) {
    for (var item in actions) {
      dispatch(item);
    }
  }
}
