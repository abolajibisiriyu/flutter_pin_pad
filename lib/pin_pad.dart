import 'package:flutter/material.dart';

import 'package:flutter_pin_pad/pin_pad_key.dart';

class PinPadKeysGrid extends StatelessWidget {
  final Function(PinPadKeyModel) handleKeyPressed;

  const PinPadKeysGrid({Key key, this.handleKeyPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: PinPadKey(
                    pinPadKey: PinPadKeyModel(
                      type: KeyType.TEXT,
                      action: KeyAction.INPUT,
                      text: '1',
                    ),
                    onPressed: handleKeyPressed,
                  ),
                ),
                Expanded(
                  child: PinPadKey(
                    pinPadKey: PinPadKeyModel(
                      type: KeyType.TEXT,
                      action: KeyAction.INPUT,
                      text: '2',
                    ),
                    onPressed: handleKeyPressed,
                  ),
                ),
                Expanded(
                  child: PinPadKey(
                    pinPadKey: PinPadKeyModel(
                      type: KeyType.TEXT,
                      action: KeyAction.INPUT,
                      text: '3',
                    ),
                    onPressed: handleKeyPressed,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: PinPadKey(
                    pinPadKey: PinPadKeyModel(
                      type: KeyType.TEXT,
                      action: KeyAction.INPUT,
                      text: '4',
                    ),
                    onPressed: handleKeyPressed,
                  ),
                ),
                Expanded(
                  child: PinPadKey(
                    pinPadKey: PinPadKeyModel(
                      type: KeyType.TEXT,
                      action: KeyAction.INPUT,
                      text: '5',
                    ),
                    onPressed: handleKeyPressed,
                  ),
                ),
                Expanded(
                  child: PinPadKey(
                    pinPadKey: PinPadKeyModel(
                      type: KeyType.TEXT,
                      action: KeyAction.INPUT,
                      text: '6',
                    ),
                    onPressed: handleKeyPressed,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: PinPadKey(
                    pinPadKey: PinPadKeyModel(
                      type: KeyType.TEXT,
                      action: KeyAction.INPUT,
                      text: '7',
                    ),
                    onPressed: handleKeyPressed,
                  ),
                ),
                Expanded(
                  child: PinPadKey(
                    pinPadKey: PinPadKeyModel(
                      type: KeyType.TEXT,
                      action: KeyAction.INPUT,
                      text: '8',
                    ),
                    onPressed: handleKeyPressed,
                  ),
                ),
                Expanded(
                  child: PinPadKey(
                    pinPadKey: PinPadKeyModel(
                      type: KeyType.TEXT,
                      action: KeyAction.INPUT,
                      text: '9',
                    ),
                    onPressed: handleKeyPressed,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: PinPadKey(
                    pinPadKey: PinPadKeyModel(
                      type: KeyType.TEXT,
                      action: KeyAction.CLEAR,
                      text: 'CLEAR',
                    ),
                    fontSize: 14,
                    onPressed: handleKeyPressed,
                  ),
                ),
                Expanded(
                  child: PinPadKey(
                    pinPadKey: PinPadKeyModel(
                      type: KeyType.TEXT,
                      action: KeyAction.INPUT,
                      text: '0',
                    ),
                    onPressed: handleKeyPressed,
                  ),
                ),
                Expanded(
                  child: PinPadKey(
                    pinPadKey: PinPadKeyModel(
                      type: KeyType.ICON,
                      icon: Icons.backspace,
                      action: KeyAction.BACKSPACE,
                    ),
                    onPressed: handleKeyPressed,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
