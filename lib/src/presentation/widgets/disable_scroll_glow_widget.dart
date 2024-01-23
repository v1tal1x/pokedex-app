import 'package:flutter/material.dart';

class DisableScrollGlowWidget extends StatelessWidget {
  final Widget child;

  const DisableScrollGlowWidget({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: child,
    );
  }
}
