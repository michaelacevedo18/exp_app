import 'package:flutter/material.dart';

class Constants {
  static sheetBoxDecoration(Color color) {
    return BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)));
  }

  static customButton(Color decoration, Color border, String _text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: decoration,
            border: Border.all(color: border),
            borderRadius: BorderRadius.circular(25.0)),
        child: Center(
          child: Text(_text),
        ),
      ),
    );
  }
}
