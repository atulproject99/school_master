import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/presentation/widgets/student_complain_card.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/shared/provider.dart';

class StudentComplainPage extends HookConsumerWidget {
  const StudentComplainPage({Key? key, required this.classId})
      : super(key: key);
  final String classId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            "Student Complaints",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColor.appWhite),
          ),
        ),
        body: ref.watch(viewComplainProvider(classId.toString())).when(
            data: (data) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) => StudentComplainCard(
                    complain: data[index],
                  ));
        }, error: (error, s) {
          return Center(child: Text(error.toString()));
        }, loading: () {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColor.primaryColor,
            ),
          );
        })

        /* Column(children: [
          SizedBox(
            height: 10.h,
          ),
       
                   
                      
          Expanded(
            child: isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColor.primaryColor,
                    ),
                  )
                : complainList.value.isEmpty
                    ? const Center(
                        child: Text("No Complaints Found"),
                      )
                    :
          )
        ]) */

        );
  }
}
