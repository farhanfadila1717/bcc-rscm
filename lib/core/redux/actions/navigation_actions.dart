import 'package:bcc_rscm/core/navigation/navigation_destinations.dart';
import 'package:flutter/material.dart';

typedef OnNavigateBack<T> = void Function(T? data);

const Duration _snackBarDisplayDuration = Duration(milliseconds: 4000);

abstract class NavigationActions {
  const NavigationActions();
}

final class NavigateBackAction extends NavigationActions {
  const NavigateBackAction();
}

final class NavigateToNextAction extends NavigationActions {
  final String path;
  final Object? extra;
  final OnNavigateBack? onBack;

  const NavigateToNextAction(this.path, {this.extra, this.onBack});
}

final class NavigateGoNextAction extends NavigationActions {
  final String path;
  final Object? extra;

  const NavigateGoNextAction(this.path, {this.extra});
}

final class NavigateToAndReplaceAction extends NavigationActions {
  final String path;
  final Object? extra;

  const NavigateToAndReplaceAction(this.path, {this.extra});
}

final class NavigateToRootAction extends NavigationActions {
  final String? path;
  final Object? extra;

  const NavigateToRootAction({this.path, this.extra});
}

final class ShowDialogAction extends NavigationActions {
  final bool barrierDismissible;
  final Color? barrierColor;
  final String? barrierLabel;
  final bool useSafeArea;
  final bool useRootNavigator;
  final RouteSettings? routeSettings;
  final Offset? anchorPoint;
  final TraversalEdgeBehavior? traversalEdgeBehavior;
  final GlobalNavigationDestination destination;

  const ShowDialogAction({
    this.barrierDismissible = true,
    this.barrierColor,
    this.barrierLabel,
    this.useSafeArea = true,
    this.useRootNavigator = true,
    this.routeSettings,
    this.anchorPoint,
    this.traversalEdgeBehavior,
    required this.destination,
  });
}

final class ShowSnackBarAction extends NavigationActions {
  const ShowSnackBarAction({
    required this.message,
    this.backgroundColor,
    this.elevation,
    this.margin,
    this.padding,
    this.width,
    this.shape,
    this.hitTestBehavior,
    this.behavior,
    this.action,
    this.actionOverflowThreshold,
    this.showCloseIcon,
    this.closeIconColor,
    this.duration = _snackBarDisplayDuration,
    this.animation,
    this.onVisible,
    this.dismissDirection,
    this.clipBehavior = Clip.hardEdge,
  });

  final String message;
  final Color? backgroundColor;
  final double? elevation;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final ShapeBorder? shape;
  final HitTestBehavior? hitTestBehavior;
  final SnackBarBehavior? behavior;
  final SnackBarAction? action;
  final double? actionOverflowThreshold;
  final bool? showCloseIcon;
  final Color? closeIconColor;
  final Duration duration;
  final Animation<double>? animation;
  final VoidCallback? onVisible;
  final DismissDirection? dismissDirection;
  final Clip clipBehavior;
}

final class ShowBottomSheetDialogAction extends NavigationActions {
  const ShowBottomSheetDialogAction({
    required this.destination,
    this.barrierDismissible = true,
    this.fullScreen = false,
    this.backgroundColor = Colors.white,
    this.barrierColor = const Color(0xBF010D26),
    this.borderRadius = 30,
    this.isScrollControlled = true,
    this.onDialogPop,
  });

  final GlobalNavigationDestination destination;
  final bool barrierDismissible;
  final bool fullScreen;
  final Color backgroundColor;
  final Color barrierColor;
  final double borderRadius;
  final bool isScrollControlled;
  final OnNavigateBack? onDialogPop;
}
