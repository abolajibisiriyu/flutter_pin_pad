library flutter_pin_pad;

import 'package:flutter/material.dart';

import 'package:flutter_pin_pad/pin_pad.dart';
import 'package:flutter_pin_pad/pin_pad_indicator.dart';
import 'package:flutter_pin_pad/pin_pad_key.dart';
import 'package:flutter_pin_pad/pin_pad_theme.dart';

/// Flutter Pin Pad.
class PinPad extends StatefulWidget {
  final int pinLength;
  final Function(String) onSubmit;
  final Function(String) onChange;
  final PinPadThemeData pinPadThemeData;
  final bool showPinProgressIndicator;

  const PinPad({
    Key key,
    this.pinLength: 4,
    this.onSubmit,
    this.pinPadThemeData,
    this.showPinProgressIndicator: true,
    this.onChange,
  }) : super(key: key);
  @override
  _PinPadState createState() => _PinPadState();
}

class _PinPadState extends State<PinPad> {
  String pin = "";

  handleKeyPressed(PinPadKeyModel pinPadKey) async {
    if (pinPadKey.action == KeyAction.INPUT) {
      if (pin.length != widget.pinLength) {
        setState(() {
          pin += pinPadKey.text;
        });
      }
    }
    if (pinPadKey.action == KeyAction.BACKSPACE) {
      if (pin.length != 0) {
        setState(() {
          pin = pin.substring(0, pin.length - 1);
        });
      }
    }

    if (pinPadKey.action == KeyAction.CLEAR) {
      setState(() {
        pin = "";
      });
    }
    widget.onChange(pin);
    if (pin.length == widget.pinLength) {
      widget.onSubmit(pin);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PinPadTheme(
      pinPadThemeData: widget.pinPadThemeData ?? PinPadThemeData(),
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Visibility(
              visible: widget.showPinProgressIndicator,
              child: Expanded(
                flex: 1,
                child: Container(
                  child: PinPadIndicator(
                      currentPinLength: pin.length,
                      totalPinLength: widget.pinLength),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: PinPadKeysGrid(
                handleKeyPressed: handleKeyPressed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
