import 'package:flutter/material.dart';

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
  final Color fillColor;
  final Color activeFillColor;
  final Color strokeColor;
  final bool active;
  final double height;
  final double width;

  const _IndicatorCircle({
    Key key,
    this.fillColor: Colors.white,
    this.activeFillColor: const Color(0xFF67C462),
    this.strokeColor: const Color(0xFF67C462),
    this.active: false,
    this.height: 16,
    this.width: 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(color: strokeColor, width: 2),
          color: active ? activeFillColor : fillColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: height,
      width: width,
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 100),
    );
  }
}
