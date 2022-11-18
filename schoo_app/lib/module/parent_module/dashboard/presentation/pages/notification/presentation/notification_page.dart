import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_circular_image.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/notification/shared/provider.dart';

class NotificationPage extends HookConsumerWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColor.appWhite),
        ),
      ),
      body: ref.watch(notificationProvider).when(data: (data) {
        return data.isEmpty
            ? const Center(
                child: Text("No Data Found"),
              )
            : ListView.separated(
                separatorBuilder: ((context, index) => Divider(
                      color: AppColor.appBlackColor.withOpacity(0.5),
                      height: 1.h,
                    )),
                itemCount: data.length,
                itemBuilder: ((context, index) => Container(
                      padding: EdgeInsets.all(10.sp),
                      child: Row(
                        children: [
                          const UserCircularImage(
                            assetsUrl: AppImages.app_logo,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Expanded(child: Text(data[index].notification!)),
                        ],
                      ),
                    )));
      }, error: (e, s) {
        return Center(
          child: Text(e.toString()),
        );
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(
            color: AppColor.primaryColor,
          ),
        );
      }),
    );
  }
}
