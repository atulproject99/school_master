import 'package:flutter/cupertino.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';

bool passwordUpdateValid(BuildContext context, String currentPass,
    String newPass, String confirmPass) {
  if (currentPass.isEmpty) {
    AppSnackBar.showInSnackBar("Please Enter Current Password", context);
    return false;
  } else if (newPass.isEmpty) {
    AppSnackBar.showInSnackBar("Please Enter New Password", context);
    return false;
  } else if (currentPass.isEmpty) {
    AppSnackBar.showInSnackBar("Please Enter Confirm New Password", context);
    return false;
  } else if (currentPass != newPass) {
    AppSnackBar.showInSnackBar("Password not match", context);
    return false;
  } else {
    return true;
  }
}

bool profileUpdateValid(
    BuildContext context, String name, String email, String userName) {
  if (name.isEmpty) {
    AppSnackBar.showInSnackBar("Please Enter Name", context);
    return false;
  } else if (email.isEmpty) {
    AppSnackBar.showInSnackBar("Please Enter Email", context);
    return false;
  } else if (userName.isEmpty) {
    AppSnackBar.showInSnackBar("Please Enter Username", context);
    return false;
  } else {
    return true;
  }
}
