import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/presentation/widgets/t_student_card.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/shared/provider.dart';

class TStudentsPage extends HookConsumerWidget {
  const TStudentsPage({Key? key, required this.classId}) : super(key: key);
  final int classId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            "Students",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColor.appWhite),
          ),
        ),
        body: /* isLoading.value
            ? const Center(
                child: CircularProgressIndicator(
                  color: AppColor.primaryColor,
                ),
              )
            : studentList.value.isEmpty
                ? const Center(
                    child: Text("No Student Found"),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: studentList.value.length,
                    itemBuilder: (context, index) => TStudentCard(
                          student: studentList.value[index],
                          session: "2022-2023",
                          classId: "1",
                        ))); */
            ref.watch(tStudentProvider(classId.toString())).when(data: (data) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) => TStudentCard(
                    student: data[index],
                    session: "2022-2023",
                    classId: classId.toString(),
                  ));
        }, error: (error, s) {
          return Center(child: Text(error.toString()));
        }, loading: () {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColor.primaryColor,
            ),
          );
        }));
  }
}
