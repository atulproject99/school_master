import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/authentication/domain/login_state.dart';
import 'package:schoo_app/authentication/domain/user.dart';
import 'package:schoo_app/authentication/shared/provider.dart';
import 'package:schoo_app/authentication/validation/login_validation.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_text_field.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/shared/provider.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _userNameController = useTextEditingController();
    final _passwordController = useTextEditingController();

    useEffect(() {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          statusBarColor: AppColor.primaryColor,
          statusBarIconBrightness: Brightness.light));
      return null;
    }, []);

    ref.listen<LoginState>(loginProvider, (_, state) {
      state.maybeMap(
          orElse: () {},
          authorized: (data) {
            User user = data.data['user'];
            String token = data.data['token'];
            ref.invalidate(schoolServiceProvider);
            ref.read(localStorageProvider).removeData();
            ref.read(localStorageProvider).addData(AppUrl.userToken, token);
            ref.read(localStorageProvider).addData(AppUrl.userType, user.role);
            if (user.role == "parents") {
              ref.refresh(pStudentDetailsProvider);
              AutoRouter.of(context).pushAndPopUntil(
                  const ParentDashboardRoute(),
                  predicate: (route) => false);
              AppSnackBar.showInSnackBar("Login sucess", context);
            } else if (user.role == "student") {
              AutoRouter.of(context).pushAndPopUntil(
                  const StudentDashboardRoute(),
                  predicate: (route) => false);
            } else {
              AutoRouter.of(context).pushAndPopUntil(
                  const TeacherDashboardRoute(),
                  predicate: (route) => false);
            }
          },
          failure: (data) {
            AppSnackBar.showInSnackBar(data.msg, context);
          });
    });
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          /*  SvgPicture.asset(
            AppImages.top1,
            height: 110.h,
            color: AppColor.primaryColor.withOpacity(1),
            fit: BoxFit.cover,
          ), */
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Image.asset(
                      AppImages.app_logo,
                      height: 100.h,
                      width: 100.w,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Login Here",
                          style: Theme.of(context).textTheme.headline1,
                        )),
                    SizedBox(
                      height: 50.h,
                    ),
                    /* SizedBox(
                      width: 1.sw,
                      child: AppDropDownField(
                        list: const ["Student", "Teacher", "Parent"],
                        onSelect: (value) {},
                        hintText: "Choose Login as",
                      ),
                    ), */
                    AppTextField(
                        controller: _userNameController,
                        hintText: "Enter username",
                        labelText: "Username",
                        prefixIcon: const Icon(
                          Icons.person,
                          color: AppColor.secondaryColor,
                        )),
                    SizedBox(
                      height: 10.h,
                    ),
                    AppTextField(
                        controller: _passwordController,
                        hintText: "Enter password",
                        labelText: "Password",
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColor.secondaryColor,
                        )),
                    SizedBox(
                      height: 40.h,
                    ),
                    AppButton(
                        buttonTitle: "Login",
                        callback: () async {
                          if (loginValid(_userNameController.text,
                              _passwordController.text, context)) {
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);

                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }

                            ref.read(loginProvider.notifier).login(
                                _userNameController.text,
                                _passwordController.text,
                                context);
                          }
                        },
                        buttonWidth: 251.w,
                        borderRadius: 5.r,
                        buttonHeight: 40.h),
                  ],
                ),
              ),
              const Spacer(),

              /*  SvgPicture.asset(
                AppImages.bottom3,
                height: 100.h,
                color: AppColor.primaryColor.withOpacity(1),
                fit: BoxFit.fill,
              ), */
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Powered By Vidyaan",
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: AppColor.dividerColor.withOpacity(0.5),
                        fontSize: 14.sp),
                  )),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ]));
  }
}
