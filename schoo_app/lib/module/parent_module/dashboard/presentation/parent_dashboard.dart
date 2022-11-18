import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/domain/sechool_detail.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/presentation/pages/p_homepage.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/presentation/pages/p_profile_page.dart';
import 'package:schoo_app/module/student_module/dashboard/widget/custom_appbar.dart';

class ParentDashboardPage extends HookConsumerWidget {
  const ParentDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _initialPage = useState<int>(0);
    final _pageController = usePageController(initialPage: _initialPage.value);
    final pagesList = [
      const ParentHomepage(),
      /*   const PFeesPage(),
      const PComplainPage(), */
      const PProfilePage()
    ];
    var schoolDetails = useState<SchoolDetails?>(null);
    ref.watch(schoolDetailsProvider).when(
          data: (data) {
            schoolDetails.value = data;
          },
          error: (w, s) {},
          loading: () {},
        );
    return Scaffold(
      appBar: getAppBar(
          context,
          _initialPage.value == 3
              ? "Profile"
              : _initialPage.value == 2
                  ? "Complain "
                  : _initialPage.value == 1
                      ? "Profile"
                      : schoolDetails.value?.branchName ?? "",
          schoolDetails.value?.branchName ?? ""),
      // drawer: const Drawer(),
      body: pagesList[_initialPage.value],
      /* Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: pagesList,
              onPageChanged: (s) {
                _initialPage.value = s;
              },
            ),
          )
        ],
      ), */
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _initialPage.value,
          onTap: (value) {
            _initialPage.value = value;
            _pageController.jumpToPage(value);
          },
          selectedIconTheme: IconThemeData(size: 25.sp),
          iconSize: 25.sp,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.home,
                  height: 25.h,
                  width: 25.w,
                  color: _initialPage.value != 0
                      ? AppColor.appBlackColor.withOpacity(0.5)
                      : AppColor.primaryColor,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  AppImages.profileIcon,
                  height: 25.h,
                  width: 25.w,
                  color: _initialPage.value != 1
                      ? AppColor.appBlackColor.withOpacity(0.5)
                      : AppColor.primaryColor,
                ),
                label: "Profile"),
          ]),
    );
  }
}
