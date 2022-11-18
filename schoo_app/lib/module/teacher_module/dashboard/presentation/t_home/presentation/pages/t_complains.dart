import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/presentation/widgets/t_complain_card.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/shared/provider.dart';

class TeacherComplainListPage extends HookConsumerWidget {
  const TeacherComplainListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Complaints",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColor.appWhite),
          ),
        ),
        body: ref.watch(tComplainProvider).when(data: (d) {
          return d.isEmpty
              ? const Center(
                  child: Text("Complaints Not found"),
                )
              : ListView.builder(
                  itemCount: d.length,
                  itemBuilder: ((context, index) =>
                      TComplainCard(complain: d[index])));
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
        }));
  }
}
