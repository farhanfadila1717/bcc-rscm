import 'package:bcc_rscm/core/redux/actions/navigation_actions.dart';
import 'package:bcc_rscm/core/redux/states/global_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

class NavigationMiddleware extends MiddlewareClass<GlobalState> {
  final GoRouter goRouter;
  final GlobalKey<NavigatorState> navigatorKey;

  NavigationMiddleware({required this.goRouter, required this.navigatorKey});

  BuildContext get context => navigatorKey.currentContext!;

  @override
  call(Store<GlobalState> store, dynamic action, NextDispatcher next) {
    if (action is! NavigationActions) {
      next(action);
      return;
    }

    if (action is NavigateToNextAction) {
      _onNavigateToNextAction(store, action);
    } else if (action is NavigateGoNextAction) {
      _onNavigateGoNextAction(store, action);
    } else if (action is NavigateToAndReplaceAction) {
      _onNavigateToAndReplaceAction(store, action);
    } else if (action is NavigateBackAction) {
      _onNavigateBackAction(store, action);
    } else if (action is NavigateToRootAction) {
      _onNavigateToRootAction(store, action);
    } else if (action is ShowDialogAction) {
      _onShowDialogAction(store, action);
    } else if (action is ShowSnackBarAction) {
      _onShowSnackBarAction(store, action);
    } else if (action is ShowBottomSheetDialogAction) {
      _onShowBottomSheetDialogAction(store, action);
    }

    next(action);
  }

  void _onNavigateToNextAction(
    Store<GlobalState> store,
    NavigateToNextAction action,
  ) async {
    final data = await goRouter.push(action.path, extra: action.extra);

    action.onBack?.call(data);
  }

  void _onNavigateGoNextAction(
    Store<GlobalState> store,
    NavigateGoNextAction action,
  ) => goRouter.go(action.path, extra: action.extra);

  void _onNavigateToAndReplaceAction(
    Store<GlobalState> store,
    NavigateToAndReplaceAction action,
  ) => goRouter.pushReplacement(action.path, extra: action.extra);

  void _onNavigateBackAction(
    Store<GlobalState> store,
    NavigateBackAction action,
  ) => Navigator.of(context).pop();

  void _onShowDialogAction(Store<GlobalState> store, ShowDialogAction action) {
    final routeSettings = RouteSettings(
      name: action.destination.runtimeType.toString(),
    );

    showDialog(
      context: context,
      builder: action.destination.builder,
      barrierDismissible: action.barrierDismissible,
      barrierColor: action.barrierColor,
      barrierLabel: action.barrierLabel,
      anchorPoint: action.anchorPoint,
      useSafeArea: action.useSafeArea,
      useRootNavigator: action.useRootNavigator,
      traversalEdgeBehavior: action.traversalEdgeBehavior,
      routeSettings: action.routeSettings ?? routeSettings,
    );
  }

  void _onShowSnackBarAction(
    Store<GlobalState> store,
    ShowSnackBarAction action,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(action.message),
        backgroundColor: action.backgroundColor,
        elevation: action.elevation,
        margin: action.margin,
        padding: action.padding,
        width: action.width,
        shape: action.shape,
        hitTestBehavior: action.hitTestBehavior,
        behavior: action.behavior ?? SnackBarBehavior.floating,
        action: action.action,
        actionOverflowThreshold: action.actionOverflowThreshold,
        showCloseIcon: action.showCloseIcon,
        closeIconColor: action.closeIconColor,
        duration: action.duration,
        animation: action.animation,
        onVisible: action.onVisible,
        dismissDirection: action.dismissDirection,
        clipBehavior: action.clipBehavior,
      ),
    );
  }

  void _onNavigateToRootAction(
    Store<GlobalState> store,
    NavigateToRootAction action,
  ) async {
    while (context.canPop()) {
      Future.sync(() => Navigator.pop(context));
    }
    context.go(action.path ?? '/', extra: action.extra);
  }

  void _onShowBottomSheetDialogAction(
    Store<GlobalState> store,
    ShowBottomSheetDialogAction action,
  ) async {
    await showModalBottomSheet(
      context: context,
      builder: action.destination.builder,
      isDismissible: action.barrierDismissible,
      isScrollControlled: action.isScrollControlled,
      backgroundColor: action.backgroundColor,
      barrierColor: action.barrierColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(action.borderRadius),
        ),
      ),
    );

    action.onDialogPop?.call(null);
  }
}
