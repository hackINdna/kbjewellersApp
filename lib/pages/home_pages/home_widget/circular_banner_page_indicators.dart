import 'package:flutter/material.dart';

class CircularBannerPageIndicator extends StatefulWidget {
  final bool showIndicator;
  const CircularBannerPageIndicator({
    super.key,
    required this.showIndicator,
  });

  @override
  State<CircularBannerPageIndicator> createState() =>
      _CircularBannerPageIndicatorState();
}

class _CircularBannerPageIndicatorState
    extends State<CircularBannerPageIndicator> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: 7,
      height: 7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.showIndicator ? Colors.black : Colors.white,
        border: Border.all(
          color: widget.showIndicator ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
