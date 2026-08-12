import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    this.title,
    this.textStyle,
    this.actions,
    this.elevation = 0,
    this.iconColor,
    this.iconScale,
    this.onTap,
    this.bottom,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.backgroundColor,
    this.systemOverlayStyle = SystemUiOverlayStyle.dark,
    this.centerTitle,
  });

  final String? title;
  final TextStyle? textStyle;
  final List<Widget>? actions;
  final double elevation;
  final Color? iconColor;
  final double? iconScale;
  final VoidCallback? onTap;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final Color? backgroundColor;
  final SystemUiOverlayStyle systemOverlayStyle;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final canPop = GoRouter.of(context).canPop();

    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: centerTitle ?? true,
      elevation: elevation,
      bottom: bottom,
      surfaceTintColor: backgroundColor,
      backgroundColor: backgroundColor,
      systemOverlayStyle: systemOverlayStyle.copyWith(
        systemNavigationBarColor: theme.scaffoldBackgroundColor,
        systemNavigationBarIconBrightness: Platform.isIOS
            ? Brightness.light
            : Brightness.dark,
      ),
      title: title != null
          ? Text(
              title!,
              style:
                  textStyle ??
                  const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
            )
          : null,
      leading: automaticallyImplyLeading
          ? (leading ??
                (canPop
                    ? IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                        onPressed: onTap ?? () => context.pop(),
                      )
                    : null))
          : null,
      actions: [...?actions, const SizedBox(width: 10)],
    );
  }

  @override
  Size get preferredSize => Size(
    double.infinity,
    (bottom != null ? bottom!.preferredSize.height : 0) + 60,
  );
}
