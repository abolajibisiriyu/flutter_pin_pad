import 'package:flutter/material.dart';

import 'package:flutter_pin_pad/pin_pad_key.dart';
import 'package:flutter_pin_pad/pin_pad_theme.dart';

class PinPadKeysGrid extends StatelessWidget {
  final Function(PinPadKeyModel) handleKeyPressed;

  const PinPadKeysGrid({Key key, this.handleKeyPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pinPadThemeData = PinPadTheme.of(context).pinPadThemeData;
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
                  child: Visibility(
                    visible: pinPadThemeData.showClear,
                    child: PinPadKey(
                      pinPadKey: PinPadKeyModel(
                        type: KeyType.TEXT,
                        action: KeyAction.CLEAR,
                        text: 'CLEAR',
                      ),
                      onPressed: handleKeyPressed,
                    ),
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
