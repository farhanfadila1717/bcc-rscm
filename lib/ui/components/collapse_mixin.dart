import 'package:flutter/widgets.dart';

mixin CollapseMixin<T extends StatefulWidget> on State<T> {
  bool isCollapsed = false;

  void listenCollapse({
    required ScrollController controller,
    double maxOffset = 200,
  }) {
    controller.addListener(() {
      final offset = controller.offset;

      if (!mounted) return;

      if (offset > maxOffset && !isCollapsed) {
        setState(() {
          isCollapsed = true;
        });
      } else if (offset < maxOffset && isCollapsed) {
        setState(() {
          isCollapsed = false;
        });
      }
    });
  }
}
