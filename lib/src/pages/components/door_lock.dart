import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class DoorLock extends StatelessWidget {
  const DoorLock({
    super.key,
    required this.press,
    required this.isLock,
  });

  final VoidCallback press;
  final bool isLock;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AnimatedSwitcher(
        duration: defaultDuration,
        switchInCurve: Curves.easeInOutBack,
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: isLock
            ? SvgPicture.asset(
                "assets/icons/door_lock.svg",
                key: const ValueKey("lock"),
              )
            : SvgPicture.asset(
                "assets/icons/door_unlock.svg",
                key: const ValueKey("unlock"),
              ),
      ),
    );
  }
}
