import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain_reponse_state.dart';
import 'package:schoo_app/module/parent_module/p_complain/presentation/widget/complain_card.dart';
import 'package:schoo_app/module/parent_module/p_complain/shared/provider.dart';

class PComplainPage extends HookConsumerWidget {
  const PComplainPage({Key? key, required this.studentId}) : super(key: key);
  final String studentId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ComplainResponseState>(replyComplainProvider, (_, state) {
      state.maybeMap(
          orElse: () {},
          success: (_) {
            // Navigator.of(context).pop();
            AppSnackBar.showInSnackBar("Response submit successfully", context);
            ref.refresh(complainListProvider(studentId));
          },
          failed: (s) {
            AppSnackBar.showInSnackBar(s.msg, context);
          });
    });
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Complain",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColor.appWhite),
          ),
        ),
        body: ref.watch(complainListProvider(studentId)).when(data: (data) {
          return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) =>
                  ComplainCard(complain: data[index]));
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
