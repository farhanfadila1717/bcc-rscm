import 'package:flutter/material.dart';

class BottomAreaBar extends StatelessWidget {
  const BottomAreaBar({
    super.key,
    required this.children,
    this.padding,
    this.decoration,
    this.withShadow = false,
  });

  final List<Widget> children;
  final EdgeInsets? padding;
  final BoxDecoration? decoration;
  final bool withShadow;

  factory BottomAreaBar.transparent({
    required List<Widget> children,
    EdgeInsets? padding,
  }) => BottomAreaBar(
    decoration: const BoxDecoration(),
    padding: padding,
    children: children,
  );

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      padding: padding ?? .fromLTRB(20, 10, 20, 16),
      decoration:
          decoration ??
          BoxDecoration(
            color: theme.scaffoldBackgroundColor,
            boxShadow: withShadow
                ? [
                    const BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 8,
                    ),
                  ]
                : null,
          ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
