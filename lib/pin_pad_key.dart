import 'package:flutter/material.dart';
import 'package:flutter_pin_pad/pin_pad_theme.dart';

class PinPadKey extends StatelessWidget {
  final PinPadKeyModel pinPadKey;
  final Function(PinPadKeyModel) onPressed;

  const PinPadKey({
    Key key,
    this.pinPadKey,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pinPadThemeData = PinPadTheme.of(context).pinPadThemeData;
    return Container(
      child: Material(
        child: InkWell(
          splashColor: Colors.red,
          onTap: () {
            onPressed(pinPadKey);
          },
          child: Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: pinPadKey.type == KeyType.ICON
                ? pinPadThemeData.backspaceIcon != null
                    ? pinPadThemeData.backspaceIcon
                    : Icon(
                        pinPadKey.icon,
                        size: 12,
                      )
                : Text(
                    pinPadKey.text,
                    textAlign: TextAlign.center,
                    style: pinPadKey.action == KeyAction.CLEAR
                        ? pinPadThemeData.clearTextStyle
                        : pinPadThemeData.numberTextStyle,
                  ),
          ),
        ),
      ),
    );
  }
}

class PinPadKeyModel {
  KeyType type;
  String text;
  IconData icon;
  KeyAction action;

  PinPadKeyModel({this.type, this.icon, this.text, this.action});
}

enum KeyType { TEXT, ICON }
enum KeyAction { INPUT, BACKSPACE, CLEAR }
