import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/domain/add_leave_state.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/shared/provider.dart';

class AddLeavePage extends HookConsumerWidget {
  const AddLeavePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _fromDateController = useTextEditingController();
    final _toDateController = useTextEditingController();
    final _reasonController = useTextEditingController();

    ref.listen<AddLeaveState>(addLeaveProvider, (_, state) {
      state.maybeMap(
          orElse: () {},
          succes: (_) {
            _fromDateController.text = "";
            _toDateController.text = "";
            _reasonController.text = "";
            AppSnackBar.showInSnackBar("Successfully submitted", context);
          },
          failure: (s) {
            AppSnackBar.showInSnackBar(s.msg, context);
          });
    });
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Take Leave",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColor.appWhite),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.sp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {
                    showCalender(context, _fromDateController);
                  },
                  child: TextField(
                    controller: _fromDateController,
                    enabled: false,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.calendar_month,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(10.sp),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColor.appBlackColor.withOpacity(0.5),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "From Date",
                      labelStyle: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(
                              color: AppColor.appBlackColor.withOpacity(0.7)),
                      hintText: "Choose Date",
                      hintStyle: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(
                              color: AppColor.appBlackColor.withOpacity(0.5)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {
                    showCalender(context, _toDateController);
                  },
                  child: TextField(
                    controller: _toDateController,
                    enabled: false,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.calendar_month,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(10.sp),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColor.appBlackColor.withOpacity(0.5),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "To Date",
                      labelStyle: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(
                              color: AppColor.appBlackColor.withOpacity(0.7)),
                      hintText: "Choose Date",
                      hintStyle: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(
                              color: AppColor.appBlackColor.withOpacity(0.5)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  controller: _reasonController,
                  enabled: true,
                  maxLines: 5,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.sp),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColor.appBlackColor.withOpacity(0.5),
                          width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelStyle: Theme.of(context).textTheme.headline4!.copyWith(
                        color: AppColor.appBlackColor.withOpacity(0.7)),
                    hintText: "Enter Reason",
                    hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                        color: AppColor.appBlackColor.withOpacity(0.8)),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: AppButton(
                      buttonTitle: "Submit",
                      callback: () {
                        if (_fromDateController.text.isEmpty) {
                          AppSnackBar.showInSnackBar(
                              "Please Choose From date", context);
                          return;
                        } else if (_toDateController.text.isEmpty) {
                          AppSnackBar.showInSnackBar(
                              "Please Choose To date", context);
                          return;
                        } else if (_reasonController.text.isEmpty) {
                          AppSnackBar.showInSnackBar(
                              "Please Enter reason", context);
                          return;
                        }
                        FocusScopeNode currentFocus = FocusScope.of(context);

                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                        ref.read(addLeaveProvider.notifier).addLeave(
                            _fromDateController.text,
                            _toDateController.text,
                            _reasonController.text,
                            context);
                      },
                      buttonWidth: 0.8.sw,
                      buttonHeight: 40.h),
                )
              ],
            ),
          ),
        ));
  }

  Future<void> showCalender(
    BuildContext context,
    TextEditingController controller,
  ) async {
    DateTime currentDate = DateTime.now();
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2050));
    if (pickedDate != currentDate) {
      controller.text =
          "${pickedDate?.year}-${pickedDate?.month}-${pickedDate?.day}";
    }
  }
}
