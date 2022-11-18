import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:schoo_app/authentication/domain/user.dart';
import 'package:schoo_app/core/domain/sechool_detail.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/presentation/pages/p_profile_page.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/shared/provider.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/shared/provider.dart';
import 'package:schoo_app/module/student_module/dashboard/widget/custom_appbar.dart';

import 'presentation/comming_soon_page.dart';
import 'presentation/s_home/presentation/s_homepage.dart';

final initProvderProvider = FutureProvider.autoDispose<Unit>((ref) async {
  ref.watch(getTokenProvider).when(
        data: (data) {
          ref.read(updateTokenProvider.notifier).updateToken(data.toString());
        },
        error: (e, s) {},
        loading: () {},
      );
  return unit;
});

class StudentDashboardPage extends HookConsumerWidget {
  const StudentDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _message = useState<String>("");
    var initialIndex = useState<int>(0);

    final pagesList = [
      StudentHomePage(),
      const CommingSoonPage(),
      const CommingSoonPage(),
      /*   const PFeesPage(),
      const PComplainPage(), */
      const PProfilePage()
    ];
    var user = useState<User?>(null);
    var schoolDetails = useState<SchoolDetails?>(null);
    ref.watch(schoolDetailsProvider).when(
          data: (data) {
            schoolDetails.value = data;
          },
          error: (w, s) {},
          loading: () {},
        );
    ref.watch(parentDetailsProvider).when(
        data: (data) {
          user.value = data;
        },
        error: (e, s) {
          AppSnackBar.showInSnackBar(e.toString(), context);
        },
        loading: () {});

    useEffect(() {
      DateTime now = DateTime.now();
      String _currentHour = DateFormat('kk').format(now);
      int hour = int.parse(_currentHour);
      if (hour >= 5 && hour < 12) {
        _message.value = 'Good Morning';
      } else if (hour >= 12 && hour <= 17) {
        _message.value = 'Good Afternoon';
      } else {
        _message.value = 'Good Evening';
      }
      return null;
    }, []);
    final _pageController = usePageController(initialPage: 0);
    return Scaffold(
        appBar: getAppBar(context, schoolDetails.value?.branchName ?? "",
            schoolDetails.value?.logo ?? ""),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: initialIndex.value,
            onTap: (value) {
              initialIndex.value = value;
              _pageController.jumpToPage(value);
            },
            selectedIconTheme: IconThemeData(size: 25.sp),
            iconSize: 25.sp,
            //  selectedLabelStyle: Theme.of(context).textTheme.headline5!,
            //   selectedFontSize: 50.sp,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    AppImages.home,
                    height: 25.h,
                    width: 25.w,
                    color: initialIndex.value != 0
                        ? AppColor.appBlackColor.withOpacity(0.5)
                        : AppColor.primaryColor,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    AppImages.liveClass,
                    height: 25.h,
                    width: 25.w,
                    color: initialIndex.value != 1
                        ? AppColor.appBlackColor.withOpacity(0.5)
                        : AppColor.primaryColor,
                  ),
                  label: "Live classes"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    AppImages.classTest,
                    height: 25.h,
                    width: 25.w,
                    color: initialIndex.value != 2
                        ? AppColor.appBlackColor.withOpacity(0.5)
                        : AppColor.primaryColor,
                  ),
                  label: "Online Test"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    AppImages.profileIcon,
                    height: 25.h,
                    width: 25.w,
                    color: initialIndex.value != 3
                        ? AppColor.appBlackColor.withOpacity(0.5)
                        : AppColor.primaryColor,
                  ),
                  label: "Profile"),
            ]),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: pagesList,
              ),
            )
          ],
        ));
  }
}
