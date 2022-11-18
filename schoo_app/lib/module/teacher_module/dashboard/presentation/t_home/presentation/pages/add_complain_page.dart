import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_text_field.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/add_complaint_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/shared/provider.dart';

class AddComplainPage extends HookConsumerWidget {
  const AddComplainPage(
      {Key? key,
      required this.session,
      required this.classId,
      required this.className,
      required this.studentId,
      required this.studentName})
      : super(key: key);
  final String session;
  final String classId;
  final String studentId;
  final String className;
  final String studentName;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _sessionController = useTextEditingController();

    final _classIdController = useTextEditingController();
    final _studentIdController = useTextEditingController();
    final _complainDate = useTextEditingController();
    final _complainBy = useTextEditingController();
    final _complaint = useTextEditingController();

    ref.listen<AddComplainState>(addComplainProvider, (_, state) {
      state.maybeMap(
          orElse: () {},
          added: (_) {
            _complainBy.text = "";
            _complaint.text = "";
            AppSnackBar.showInSnackBar(
                "Compalint Inserted Successfully", context);
          },
          failure: (d) {
            AppSnackBar.showInSnackBar(d.msg, context);
          });
    });

    useEffect(() {
      Future.delayed(const Duration(seconds: 1), () async {
        _sessionController.text = session;
        _classIdController.text = className;
        _studentIdController.text = studentName;
        _complainDate.text =
            "${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}";
      });
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Complain",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColor.appWhite),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            AppTextField(
                controller: _sessionController,
                hintText: "session",
                labelText: "session",
                prefixIcon: const Icon(
                  Icons.person,
                  color: AppColor.secondaryColor,
                )),
            SizedBox(
              height: 10.h,
            ),
            AppTextField(
                controller: _classIdController,
                hintText: "Enter class id",
                labelText: "Class id",
                prefixIcon: const Icon(
                  Icons.person,
                  color: AppColor.secondaryColor,
                )),
            SizedBox(
              height: 10.h,
            ),
            AppTextField(
                controller: _studentIdController,
                hintText: "Enter student id",
                labelText: "Student id",
                prefixIcon: const Icon(
                  Icons.person,
                  color: AppColor.secondaryColor,
                )),
            SizedBox(
              height: 10.h,
            ),
            AppTextField(
                controller: _complainDate,
                hintText: "Enter complain date",
                labelText: "Complain date",
                prefixIcon: const Icon(
                  Icons.person,
                  color: AppColor.secondaryColor,
                )),
            SizedBox(
              height: 10.h,
            ),
            AppTextField(
                controller: _complainBy,
                hintText: "Complaint by",
                labelText: "Complaint by",
                prefixIcon: const Icon(
                  Icons.person,
                  color: AppColor.secondaryColor,
                )),
            SizedBox(
              height: 10.h,
            ),
            AppTextField(
                controller: _complaint,
                hintText: "Complaint",
                labelText: "Complaint",
                prefixIcon: const Icon(
                  Icons.person,
                  color: AppColor.secondaryColor,
                )),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.center,
              child: AppButton(
                  buttonTitle: "Add Complain",
                  callback: () {
                    if (_complaint.text.isEmpty || _complainBy.text.isEmpty) {
                      AppSnackBar.showInSnackBar(
                          "Please Enter complain", context);
                      return;
                    }
                    FocusScopeNode currentFocus = FocusScope.of(context);

                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                    print(classId);
                    ref.read(addComplainProvider.notifier).addComplain(
                        context,
                        classId,
                        session,
                        studentId,
                        _complainDate.text,
                        _complainBy.text,
                        _complaint.text);
                  },
                  buttonWidth: 0.6.sw,
                  buttonHeight: 35.h),
            )
          ],
        ),
      ),
    );
  }
}
