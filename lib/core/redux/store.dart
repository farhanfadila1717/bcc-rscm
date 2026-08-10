import 'package:bcc_rscm/core/injector/injector.dart';
import 'package:bcc_rscm/core/redux/middlewares/middlewares.dart';
import 'package:bcc_rscm/core/redux/reducers/reducers.dart';
import 'package:bcc_rscm/core/redux/states/global_state.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

Store<GlobalState> createStore() {
  return Store(
    allReducers,
    initialState: GlobalState(),
    middleware: [
      NavigationMiddleware(
        goRouter: getIt.get<GoRouter>(),
        navigatorKey: getIt.get<GlobalKey<NavigatorState>>(),
      ).call,
    ],
  );
}
