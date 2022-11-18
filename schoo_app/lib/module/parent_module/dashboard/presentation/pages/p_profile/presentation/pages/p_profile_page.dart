import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/authentication/domain/user.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_circular_image.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/presentation/widget/profile_card.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/shared/provider.dart';

class PProfilePage extends HookConsumerWidget {
  const PProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = useState<User?>(null);
    var isDarkMode = useState<bool>(false);
    ref.watch(parentDetailsProvider).when(
          data: (data) {
            user.value = data;
          },
          error: (e, s) {},
          loading: () {},
        );
    return Scaffold(
        backgroundColor:
            const Color.fromARGB(255, 240, 203, 203).withOpacity(0.05),
        body: ref.watch(schoolDetailsProvider).when(
          data: (data) {
            return Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    width: 1.sw,
                    height: 100.h,
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        image: const DecorationImage(
                            opacity: 0.45,
                            fit: BoxFit.fill,
                            image: AssetImage(AppImages.texture)),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.r),
                            bottomRight: Radius.circular(20.r))),
                  ),
                ),
                Positioned(
                    top: 45.h,
                    left: 0,
                    right: 10,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Container(
                              height: 140.h,
                              width: 1.sw,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  UserCircularImage(
                                    assetsUrl: AppImages.user_pic,
                                    height: 60.h,
                                    width: 60.w,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    user.value?.name ?? "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(
                                            color: AppColor.appBlackColor,
                                            fontWeight: FontWeight.w800),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    user.value?.role ?? "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            color: AppColor.appBlackColor),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: AppColor.appWhite,
                                  borderRadius: BorderRadius.circular(10.r)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6.sp),
                          child: Column(children: [
                            ProfileCard(
                              title: "Update Profile",
                              callback: () {
                                if (user.value != null) {
                                  AutoRouter.of(context).push(
                                      ParentProfileUpdateRoute(
                                          user: user.value!));
                                }
                              },
                              profileUrl: AppImages.userProfile,
                            ),
                            /*  InkWell(
                        onTap: () {},
                        child: Card(
                          elevation: 3,
                          color: AppColor.appWhite,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Container(
                              width: 1.sw,
                              padding: EdgeInsets.only(
                    left: 15.h, right: 15.h, top: 5.h, bottom: 5.h),
                              : CustomSwitch(
                  defaultValue: isDarkMode,
                  btnText: "Dark mode",
                  callback: (s) {
                    isDarkMode.value = s;
                    if (isDarkMode.value) {
                      ThemeManager.of(context)
                          .setBrightnessPreference(BrightnessPreference.dark);
                    } else {
                      ThemeManager.of(context).setBrightnessPreference(
                          BrightnessPreference.light);
                    }
                  },
                  tapFunc: () {},
                              )),
                        ),
                      ), */
                            ProfileCard(
                              title: "Update Password",
                              callback: () {
                                AutoRouter.of(context)
                                    .push(const ParentPasswordUpdateRoute());
                              },
                              profileUrl: AppImages.password,
                            ),
                            ProfileCard(
                              title: "About Us",
                              callback: () {
                                AutoRouter.of(context).push(HtmlReaderRoute(
                                    title: "About Us", data: data.about!));
                              },
                              profileUrl: AppImages.aboutUs,
                            ),
                            ProfileCard(
                              title: "Privacy Policy",
                              callback: () {
                                AutoRouter.of(context).push(HtmlReaderRoute(
                                    title: "Privacy Policy",
                                    data: data.privacypolicy!));
                              },
                              profileUrl: AppImages.policy,
                            ),
                            ProfileCard(
                              title: "Contact Us",
                              callback: () {
                                AutoRouter.of(context).push(HtmlReaderRoute(
                                    title: "Contact Us",
                                    data: data.contactUs!));
                              },
                              profileUrl: AppImages.contactUs,
                            ),
                            ProfileCard(
                              title: "Logout",
                              callback: () async {
                                print(await ref
                                    .watch(localStorageProvider)
                                    .getData(AppUrl.userToken));

                                ref.read(localStorageProvider).removeData();
                                print(await ref
                                    .watch(localStorageProvider)
                                    .getData(AppUrl.userToken));
                                AutoRouter.of(context).pushAndPopUntil(
                                    const LoginRoute(),
                                    predicate: (route) => false);
                              },
                              profileUrl: AppImages.logout,
                            ),
                          ]),
                        )
                      ],
                    )),
              ],
            );
          },
          loading: () {
            return const Center(
                child: CircularProgressIndicator(
              color: AppColor.primaryColor,
            ));
          },
          error: (e, s) {
            return null;
          },
        ));
  }
}
