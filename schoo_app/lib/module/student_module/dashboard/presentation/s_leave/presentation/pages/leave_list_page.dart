import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/routes/app_routes.gr.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/presentation/widgets/leave_widget.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/shared/provider.dart';

class LeaveListPage extends HookConsumerWidget {
  const LeaveListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          "Your Leave",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColor.appWhite),
        ),
      ),
      body: ref.watch(getLeaveProvider).when(data: (data) {
        return data.isEmpty
            ? const Center(
                child: Text("No Data Found"),
              )
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) => LeaveWidget(
                      fromDate: data[index].fromDate,
                      toDate: data[index].toDate!,
                      reason: data[index].reasone!,
                      status: data[index].status!,
                    ));
      }, error: (s, e) {
        return Center(
          child: Text(s.toString()),
        );
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            final s = await AutoRouter.of(context).push(const AddLeaveRoute());
            ref.refresh(getLeaveProvider);
          },
          label: const Text("Take Leave")),
    );
  }
}
