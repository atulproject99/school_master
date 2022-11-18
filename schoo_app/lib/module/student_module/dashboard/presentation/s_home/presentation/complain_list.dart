import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/parent_module/p_complain/presentation/widget/complain_card.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/shared/provider.dart';

class SComplainPage extends HookConsumerWidget {
  const SComplainPage({Key? key}) : super(key: key);

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
        body: ref.watch(studentComplainProvider).when(data: (data) {
          return data.isEmpty
              ? const Center(
                  child: Text("Data not found"),
                )
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) => ComplainCard(
                        complain: data[index],
                        type: 2,
                      ));
        }, error: (e, s) {
          return const Center(child: Text("No Data Found"));
        }, loading: () {
          return const Center(
              child: CircularProgressIndicator(
            color: AppColor.secondaryColor,
          ));
        }));
  }
}
