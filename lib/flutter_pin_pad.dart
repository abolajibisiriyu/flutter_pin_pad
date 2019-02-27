library flutter_pin_pad;

import 'package:flutter/material.dart';

import 'package:flutter_pin_pad/pin_pad.dart';
import 'package:flutter_pin_pad/pin_pad_indicator.dart';
import 'package:flutter_pin_pad/pin_pad_key.dart';

/// Flutter Pin Pad.
class PinPad extends StatefulWidget {
  final int pinLength;
  final Function(String) onSubmit;

  const PinPad({Key key, this.pinLength, this.onSubmit}) : super(key: key);
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
      if (pin.length == widget.pinLength) {
        widget.onSubmit(pin);
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
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: PinPadIndicator(
                  currentPinLength: pin.length,
                  totalPinLength: widget.pinLength),
            ),
          ),
          Expanded(
            flex: 3,
            child: PinPadKeysGrid(
              handleKeyPressed: handleKeyPressed,
            ),
          )
        ],
      ),
    );
  }
}
