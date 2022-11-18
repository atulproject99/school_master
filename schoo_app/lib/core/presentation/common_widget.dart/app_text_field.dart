import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';

class AppTextField extends StatelessWidget {
  AppTextField(
      {Key? key,
      required this.hintText,
      this.prefixIcon,
      this.controller,
      this.inputType,
      this.maxLength,
      this.type = 1,
      this.labelText = "",
      this.maxLines = 1,
      this.isObsecure = false})
      : super(key: key);
  final String hintText;
  Widget? prefixIcon;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final int? maxLength;
  final bool? isObsecure;
  final int type;
  final String labelText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.dividerColor.withOpacity(0.15),
          /*  boxShadow: [
              BoxShadow(
                  color: AppColor.dividerColor.withOpacity(0.1),
                  blurRadius: 1,
                  spreadRadius: 1) */
          //]
        ),
        child: TextField(
          controller: controller,
          obscureText: isObsecure!,
          keyboardType: inputType,
          readOnly: type == 1 ? false : true,
          enabled: type == 1 ? true : false,
          decoration: InputDecoration(
            contentPadding: type == 1
                ? EdgeInsets.only(left: 5.w, top: 14.h)
                : EdgeInsets.all(10.sp),
            prefixIcon: prefixIcon,
            border: InputBorder.none,

            /*  enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColor.primaryColor.withOpacity(0.9), width: 1.0),
              borderRadius: BorderRadius.circular(5.r),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColor.primaryColor.withOpacity(0.7), width: 0.0),
              borderRadius: BorderRadius.circular(5.r),
            ), */
            labelText: type == 2 ? labelText : null,
            labelStyle: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColor.primaryColor.withOpacity(0.7)),
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColor.appBlackColor.withOpacity(0.5)),
          ),
        ),
      ),
    );
  }
}
