import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/authentication/domain/user.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_circular_image.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/presentation/widget/student_card.dart';

import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/shared/provider.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/shared/provider.dart';

import '../../../../../../../../core/presentation/routes/app_routes.gr.dart';

class ParentHomepage extends HookConsumerWidget {
  const ParentHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = useState<User?>(null);
    ref.watch(getTokenProvider).when(
          data: (data) {
            ref.read(updateTokenProvider.notifier).updateToken(data.toString());
          },
          error: (e, s) {},
          loading: () {},
        );
    ref.watch(parentDetailsProvider).when(
          data: (data) {
            user.value = data;
          },
          error: (e, s) {},
          loading: () {},
        );

    var _initial = useState<int>(0);
    useEffect(() {
      Future.delayed(const Duration(seconds: 1), () async {
        ref.refresh(pStudentDetailsProvider);
      });
      return null;
    }, []);
    return Scaffold(
      backgroundColor: AppColor.dividerColor.withOpacity(0.1),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: 1.sw,
              height: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: AppColor.appWhite),
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
                                  color: AppColor.appWhite,
                                  fontWeight: FontWeight.w800),
                        ),
                        Text(
                          user.value?.role ?? "",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  color: AppColor.appWhite,
                                  fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
            top: 65.h,
            left: 0,
            right: 10,
            child: SizedBox(
              height: 1.sh,
              width: 1.sw,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: () async {
                          AutoRouter.of(context).push(ShowEventsRoute());
                          /*   await UpiPay.getInstalledUpiApplications(
                              statusType:
                                  UpiApplicationDiscoveryAppStatusType.all); */
                        },
                        child: Card(
                          elevation: 1,
                          child: Container(
                            height: 70.h,
                            width: 1.sw,
                            child: Row(children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              UserCircularImage(
                                assetsUrl: AppImages.sCalendar,
                                height: 40.h,
                                networkUrl: "",
                                width: 40.w,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Academic Calender",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(fontSize: 16.sp),
                                  ),
                                ],
                              ))
                            ]),
                            margin: EdgeInsets.all(2.sp),
                          ),
                        ),
                      ),
                      ref.watch(pStudentDetailsProvider).when(data: (data) {
                        return ListView.builder(
                            shrinkWrap: true,
                            itemCount: data.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) =>
                                StudentCard(student: data[index]));
                      }, error: (e, s) {
                        return Text(e.toString());
                      }, loading: () {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: AppColor.secondaryColor,
                          ),
                        );
                      }),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(height: 100.h)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      /*  Padding(
        padding: EdgeInsets.all(10.sp),
        child: Column(
          children: [
            ref.watch(bannerProvider).when(
              data: (data) {
                return Column(
                  children: [
                    /*    CarouselSlider(
                      options: CarouselOptions(
                        height: 150.h,
                        aspectRatio: 16 / 9,
                        viewportFraction: 1,
                        initialPage: _initial.value,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        onPageChanged: (val, e) {
                          _initial.value = val;
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                      items: data.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10.r),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            AppUrl.imageUrl + i.image))),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ), */
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: data.map(
                          (image) {
                            int index = list.indexOf(image.image);
                            return Container(
                              width: 8.0,
                              height: 8.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _initial.value == index
                                      ? const Color.fromRGBO(0, 0, 0, 0.9)
                                      : const Color.fromRGBO(0, 0, 0, 0.4)),
                            );
                          },
                        ).toList()),
                  ],
                );
              },
              loading: () {
                return const Text("");
              },
              error: (u, h) {
                return const Text("");
              },
            ),
            ref.watch(pStudentDetailsProvider).when(data: (data) {
              return Expanded(
                  child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) => StudentCard(
                            student: data[index],
                          )));
            }, error: (e, s) {
              return Text(e.toString());
            }, loading: () {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColor.secondaryColor,
                ),
              );
            }),
          ],
        ),
      ), */
    );
  }
}
