import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/shared/provider.dart';

class ClassListPage extends HookConsumerWidget {
  const ClassListPage({Key? key, required this.type}) : super(key: key);
  final int type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            "Class List",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColor.appWhite),
          ),
        ),
        body: ref.watch(classDetailsProvider).when(
          data: (data) {
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: ((context, index) => InkWell(
                      onTap: () {
                        if (type == 1) {
                          AutoRouter.of(context)
                              .push(TStudentsRoute(classId: data[index].id));
                        } else if (type == 2) {
                          AutoRouter.of(context).push(StudentComplainRoute(
                              classId: data[index].id.toString()));
                        } else if (type == 3) {
                          AutoRouter.of(context).push(THomeworkRoute(
                              classId: data[index].id.toString()));
                        } else if (type == 4) {
                          AutoRouter.of(context).push(TStudyMaterialRoute(
                              classId: data[index].id.toString()));
                        } else if (type == 5) {
                          AutoRouter.of(context).push(MarkAttendanceRoute(
                              classId: data[index].id.toString()));
                        }
                      },
                      child: Card(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.sp),
                          child: Text(data[index].studentclass!),
                        ),
                      ),
                    )));
          },
          error: (e, s) {
            return const Text("No Data Found");
          },
          loading: () {
            return const Center(
                child: CircularProgressIndicator(color: AppColor.primaryColor));
          },
        ));
  }
}
