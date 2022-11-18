import 'package:flutter/material.dart';

class AppSnackBar {
  static void showInSnackBar(String value, BuildContext context,
      {Color bgcolor = Colors.black45}) {
    final snackBar = SnackBar(
      backgroundColor: bgcolor,
      content: Text(value.toString()),
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: 'ok',
        textColor: Colors.white,
        onPressed: () {
          // AutoRouter.of(context).pop();
          // Some code to undo the change.
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
