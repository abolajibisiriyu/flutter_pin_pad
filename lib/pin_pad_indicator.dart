import 'package:flutter/material.dart';

import 'package:flutter_pin_pad/pin_pad_theme.dart';

class PinPadIndicator extends StatelessWidget {
  final int currentPinLength;
  final int totalPinLength;

  PinPadIndicator({this.currentPinLength, this.totalPinLength});

  List<Widget> _generateIndicators() {
    final List<Widget> indicators = [];
    for (var i = 0; i < totalPinLength; i++) {
      indicators.add(_IndicatorCircle(active: currentPinLength >= i + 1));
    }
    return indicators;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _generateIndicators(),
        ),
      ),
    );
  }
}

class _IndicatorCircle extends StatelessWidget {
  final bool active;

  const _IndicatorCircle({
    Key key,
    this.active: false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pinPadThemeData = PinPadTheme.of(context).pinPadThemeData;
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        border: Border.all(
            color: pinPadThemeData.indicatorTheme.strokeColor, width: 2),
        color: active
            ? pinPadThemeData.indicatorTheme.activeFillColor
            : pinPadThemeData.indicatorTheme.fillColor,
        borderRadius: pinPadThemeData.indicatorTheme.borderRadius,
      ),
      height: pinPadThemeData.indicatorTheme.height,
      width: pinPadThemeData.indicatorTheme.width,
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 100),
    );
  }
}
