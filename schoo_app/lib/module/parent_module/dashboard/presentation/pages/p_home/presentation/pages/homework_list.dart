import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/presentation/widget/parent_homework_card.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/shared/provider.dart';
import 'package:schoo_app/module/student_module/homework/domain/upload_homework_state.dart';
import 'package:schoo_app/module/student_module/homework/shared/provider.dart';

class PHomeworkListPage extends HookConsumerWidget {
  const PHomeworkListPage({Key? key, required this.studentId})
      : super(key: key);
  final int studentId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<UploadHomeworkState>(uploadHomeworkProvider, (_, state) {
      state.maybeMap(
        orElse: () {},
        succes: (_) {
          AppSnackBar.showInSnackBar("Uploaded", context);
        },
        failure: (s) {
          AppSnackBar.showInSnackBar(s.msg, context);
        },
      );
    });
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Homework",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColor.appWhite),
          ),
        ),
        body: ref.watch(parentHomeworkProvider(studentId)).when(data: (data) {
          return ListView.builder(
              itemCount: data.length,
              itemBuilder: ((context, index) => ParentHomeworkCard(
                    homework: data[index],
                    studentId: studentId,
                  )));
        }, error: (e, d) {
          return const Center(child: Text("No data Found"));
        }, loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }));
  }
}
