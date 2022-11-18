import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_text_field.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/domain/p_update_state.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/validation/profile_validation.dart';

class ParentPasswordUpdatePage extends HookConsumerWidget {
  const ParentPasswordUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _currentPasswordController = useTextEditingController();
    final _newPasswordController = useTextEditingController();
    final _confirmNewPasseordController = useTextEditingController();
    ref.listen<ParentUpdateState>(updateProvider, (_, state) {
      state.maybeMap(
          orElse: () {},
          updated: (_) {
            AppSnackBar.showInSnackBar("Updated Successfully", context);
          },
          failure: (s) {
            AppSnackBar.showInSnackBar(s.msg, context);
          });
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Update Password",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColor.appWhite),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Update Your Password",
                  style: Theme.of(context).textTheme.headline1,
                )),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: AppTextField(
                  controller: _currentPasswordController,
                  hintText: "Enter Current password",
                  labelText: "Current Password",
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: AppColor.secondaryColor,
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: AppTextField(
                  controller: _newPasswordController,
                  hintText: "Enter New password",
                  labelText: "New Password",
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: AppColor.secondaryColor,
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: AppTextField(
                  controller: _confirmNewPasseordController,
                  hintText: "Confirm New Password",
                  labelText: "Confirm New Password",
                  isObsecure: true,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: AppColor.secondaryColor,
                  )),
            ),
            SizedBox(
              height: 40.h,
            ),
            AppButton(
                buttonTitle: "Update ",
                callback: () {
                  if (passwordUpdateValid(
                      context,
                      _currentPasswordController.text,
                      _newPasswordController.text,
                      _confirmNewPasseordController.text)) {
                    FocusScopeNode currentFocus = FocusScope.of(context);

                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                    ref.read(updateProvider.notifier).updatePassword(
                        context,
                        _currentPasswordController.text,
                        _newPasswordController.text,
                        _confirmNewPasseordController.text);
                  }
                },
                buttonWidth: 251.w,
                buttonHeight: 40.h),
            SizedBox(
              height: 100.h,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Powered By Vidyaan",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: AppColor.dividerColor.withOpacity(0.3),
                      fontSize: 14.sp),
                ))
          ],
        ),
      ),
    );
  }
}
