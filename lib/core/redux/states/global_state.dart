import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_state.freezed.dart';

@freezed
abstract class GlobalState with _$GlobalState {
  const GlobalState._();

  const factory GlobalState({@Default([]) Iterable<Object> states}) =
      _AuthState;
}

extension GlobalStateExtensions on GlobalState {
  T get<T>() {
    return states.firstWhere((e) => e is T) as T;
  }

  GlobalState replace<T>(Object newState) {
    return GlobalState(states: [...states.where((e) => e is! T), newState]);
  }
}
