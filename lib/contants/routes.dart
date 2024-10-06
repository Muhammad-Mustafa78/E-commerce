import 'package:flutter/material.dart';

class Routs {
  static Routs instance = Routs();
  Future<dynamic> pushAndRemoveaUntill(Widget widget, BuildContext context) {
    return Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (ctx) => widget,
        ),
        (route) => false);
  }

  Future<dynamic> push(Widget widget, BuildContext context) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => widget,
      ),
    );
  }
}
