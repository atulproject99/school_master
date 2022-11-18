import 'package:flutter/material.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';

bool loginValid(String userName, String password, BuildContext context) {
  if (userName.isEmpty) {
    AppSnackBar.showInSnackBar("Please Enter UserName", context);
    return false;
  } else if (password.isEmpty) {
    AppSnackBar.showInSnackBar("Please Enter password", context);
    return false;
  } else {
    return true;
  }
}
