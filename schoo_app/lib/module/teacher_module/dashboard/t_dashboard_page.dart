import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/domain/sechool_detail.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/presentation/pages/p_profile_page.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/shared/provider.dart';
import 'package:schoo_app/module/student_module/dashboard/widget/custom_appbar.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/presentation/t_home_page.dart';

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

class TeacherDashboardPage extends HookConsumerWidget {
  const TeacherDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _initialPage = useState<int>(0);
    var schoolDetails = useState<SchoolDetails?>(null);
    ref.watch(schoolDetailsProvider).when(
          data: (data) {
            schoolDetails.value = data;
          },
          error: (w, s) {},
          loading: () {},
        );
    final pagesList = [
      TeacherHomePage(),
      //  const PFeesPage(),
      // const PComplainPage(),
      const PProfilePage()
    ];

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
          schoolDetails.value?.logo ?? ""),
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
            // _pageController.jumpToPage(value);
          },
          selectedIconTheme: IconThemeData(size: 25.sp),
          iconSize: 25.sp,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Profile"),
          ]),
    );
  }
}
