import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/authentication/domain/user.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_text_field.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/domain/p_update_state.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/validation/profile_validation.dart';

class ParentProfileUpdatePage extends HookConsumerWidget {
  ParentProfileUpdatePage({Key? key, required this.user}) : super(key: key);
  User user;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _nameController = useTextEditingController();
    final _emailController = useTextEditingController();
    final _usernameController = useTextEditingController();
    useEffect(() {
      Future.delayed(const Duration(seconds: 1), () async {
        _nameController.text = user.name ?? "";
        _emailController.text = user.email ?? "";
        _usernameController.text = user.username ?? "";
      });
      return null;
    }, []);
    ref.listen<ParentUpdateState>(updateProvider, (_, state) {
      state.maybeMap(
          orElse: () {},
          updated: (_) {
            ref.refresh(parentDetailsProvider);
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
          "Update Profile",
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
                  "Update Your Profile",
                  style: Theme.of(context).textTheme.headline1,
                )),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: AppTextField(
                  controller: _nameController,
                  hintText: "Enter Your name",
                  labelText: "Name",
                  prefixIcon: const Icon(
                    Icons.person,
                    color: AppColor.secondaryColor,
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: AppTextField(
                  controller: _emailController,
                  hintText: "Enter Your Email",
                  labelText: "Email",
                  inputType: TextInputType.emailAddress,
                  prefixIcon: const Icon(
                    Icons.email,
                    color: AppColor.secondaryColor,
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: AppTextField(
                  controller: _usernameController,
                  hintText: "Enter Your UserName",
                  labelText: "Username",
                  prefixIcon: const Icon(
                    Icons.person,
                    color: AppColor.secondaryColor,
                  )),
            ),
            SizedBox(
              height: 40.h,
            ),
            AppButton(
                buttonTitle: "Update ",
                callback: () {
                  if (profileUpdateValid(context, _nameController.text,
                      _emailController.text, _usernameController.text)) {
                    FocusScopeNode currentFocus = FocusScope.of(context);

                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                    ref.read(updateProvider.notifier).updateProfile(
                        context,
                        _nameController.text,
                        _emailController.text,
                        _usernameController.text);
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
