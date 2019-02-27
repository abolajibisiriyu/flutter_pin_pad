import 'package:flutter/material.dart';

class PinPadKey extends StatelessWidget {
  final PinPadKeyModel pinPadKey;
  final double fontSize;
  final double iconSize;
  final Function(PinPadKeyModel) onPressed;

  const PinPadKey({
    Key key,
    this.pinPadKey,
    this.fontSize: 22,
    this.iconSize: 12,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        child: InkWell(
          onTap: () {
            onPressed(pinPadKey);
          },
          child: Container(
            alignment: Alignment.center,
            child: pinPadKey.type == KeyType.ICON
                ? Icon(
                    pinPadKey.icon,
                    size: iconSize,
                  )
                : Text(
                    pinPadKey.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w500,
                    ),
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
