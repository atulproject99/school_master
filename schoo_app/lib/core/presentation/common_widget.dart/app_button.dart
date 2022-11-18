import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      required this.buttonTitle,
      required this.callback,
      required this.buttonWidth,
      required this.buttonHeight,
      this.fontSize,
      this.bgColor = AppColor.secondaryColor,
      this.textColor = AppColor.appWhite,
      this.borderRadius = 5})
      : super(key: key);

  final String buttonTitle;
  final VoidCallback callback;
  final double buttonWidth;
  final double buttonHeight;
  final double? fontSize;
  final Color? bgColor;
  final Color? textColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius.r),
          color: bgColor,
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: textColor,
                  fontSize: fontSize,
                ),
          ),
        ),
      ),
    );
  }
}
