import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class TempBtn extends StatelessWidget {
  const TempBtn({
    super.key,
    required this.svgSrc,
    required this.title,
    this.isActive = false, // by default we set isActive to false
    required this.press,
    this.activeColor = primaryColor,
  });

  final String svgSrc, title;
  final bool isActive;
  final VoidCallback press;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOutBack,
            height: isActive ? 76 : 50,
            width: isActive ? 76 : 50,
            child: SvgPicture.asset(svgSrc,
                colorFilter:
                    ColorFilter.mode(isActive ? activeColor : Colors.white38, BlendMode.src)),
          ),
          const SizedBox(height: defaultPadding / 2),
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
              fontSize: 16,
              color: isActive ? activeColor : Colors.white38,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
            child: Text(
              title.toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }
}
