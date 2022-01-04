import 'package:flutter/material.dart';

//ButtonStyle
ButtonStyle simpleButton(Color color) {
  return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(color),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)))));
}
