import 'package:flutter/material.dart';

class PinPadTheme extends InheritedWidget {
  final PinPadThemeData pinPadThemeData;

  PinPadTheme({this.pinPadThemeData, Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static PinPadTheme of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(PinPadTheme);
}

class PinPadThemeData {
  TextStyle numberTextStyle;
  TextStyle clearTextStyle;
  bool showClear;
  IndicatorTheme indicatorTheme;
  Icon backspaceIcon;
  Color keyBackgroundColor;
  bool disableKeyFeedback;

  PinPadThemeData({
    this.numberTextStyle:
        const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
    this.clearTextStyle:
        const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
    this.showClear: true,
    this.indicatorTheme: const IndicatorTheme(),
    this.keyBackgroundColor: Colors.white,
    this.disableKeyFeedback: false,
    this.backspaceIcon,
  });
}

class IndicatorTheme {
  final Color fillColor;
  final Color activeFillColor;
  final Color strokeColor;
  final double height;
  final double width;
  final BorderRadius borderRadius;

  const IndicatorTheme({
    this.fillColor: Colors.white,
    this.activeFillColor: const Color(0xFF67C462),
    this.strokeColor: const Color(0xFF67C462),
    this.height: 16,
    this.width: 16,
    this.borderRadius: const BorderRadius.all(Radius.circular(20)),
  });
}
