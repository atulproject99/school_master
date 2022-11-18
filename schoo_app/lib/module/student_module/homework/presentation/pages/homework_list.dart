import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/module/student_module/homework/domain/upload_homework_state.dart';
import 'package:schoo_app/module/student_module/homework/presentation/widget/homework_card.dart';
import 'package:schoo_app/module/student_module/homework/shared/provider.dart';

class HomeworkListPage extends HookConsumerWidget {
  const HomeworkListPage({Key? key}) : super(key: key);

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
        body: ref.watch(homeworkListProvider).when(data: (data) {
          return data.isEmpty
              ? const Center(
                  child: Text("Data Not Found"),
                )
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: ((context, index) =>
                      HomeworkCard(homework: data[index], type: 1)));
        }, error: (e, d) {
          return Center(child: Text(e.toString()));
        }, loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }));
  }
}
