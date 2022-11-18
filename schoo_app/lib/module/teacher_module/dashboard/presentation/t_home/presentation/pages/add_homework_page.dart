import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/domain/file_picker_state.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/add_homework_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/class_subject_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/subject.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/presentation/widgets/custom_dropdown.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/shared/provider.dart';

class AddHomeworkPage extends HookConsumerWidget {
  const AddHomeworkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var subjectList = useState<List<Subject>>([]);
    var isLoading = useState<bool>(false);

    var session = useState<String>("");
    var classId = useState<String>("");
    var subjectId = useState<String>("");
    var _videoLinkController =
        useTextEditingController(text: "https://youtu.be/");
    var _dateController = useTextEditingController();
    var _pdfController = useTextEditingController();

    var pdfFile = useState<File?>(null);

    ref.listen<FilePickerState>(filePickerProvider, (_, state) {
      state.maybeMap(
        orElse: () {},
        selectedFile: (f) {
          pdfFile.value = f.file;
          _pdfController.text = "";
          _pdfController.text = f.file.path;
        },
        failure: (_) {},
      );
    });

    ref.listen<ClassSubjectState>(subjectProvider, (_, state) {
      state.map(
          initial: (_) {
            isLoading.value = false;
          },
          isLoading: (_) {
            isLoading.value = true;
          },
          notLoading: (_) {
            isLoading.value = false;
          },
          data: (data) {
            subjectList.value.clear();
            subjectList.value.addAll(data.tStudent);
          },
          noData: (_) {},
          failure: (_) {});
    });

    ref.listen<AddHomeWorkState>(addHomeProvider, (_, state) {
      state.maybeMap(
        orElse: () {},
        success: (_) {
          AppSnackBar.showInSnackBar("Successfully added", context);
        },
        failure: (e) {
          AppSnackBar.showInSnackBar(e.msg, context);
        },
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Homework",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColor.appWhite),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Session",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: AppColor.appBlackColor)),
              SizedBox(
                height: 10.h,
              ),
              ref.watch(acedmicProvider).when(
                data: (data) {
                  return CustomDropdown(
                      list: data,
                      onChanged: (value) {
                        session.value = value.session;
                      });
                },
                error: (e, s) {
                  return const Text("");
                },
                loading: () {
                  return const Align(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(
                      color: AppColor.primaryColor,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Text("Classess",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: AppColor.appBlackColor)),
              SizedBox(
                height: 5.h,
              ),
              ref.watch(classDetailsProvider).when(
                data: (data) {
                  return CustomDropdown(
                      list: data,
                      onChanged: (value) {
                        classId.value = value.id.toString();

                        ref
                            .read(subjectProvider.notifier)
                            .searchClassSubject(value.id.toString());
                      });
                },
                error: (e, s) {
                  return const Text("");
                },
                loading: () {
                  return const Text('');
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Text("Subject",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: AppColor.appBlackColor)),
              SizedBox(
                height: 5.h,
              ),
              CustomDropdown(
                  list: subjectList.value,
                  onChanged: (value) {
                    subjectId.value = value.id.toString();
                    //                              classId.value = value.id.toString();
                  }),
              SizedBox(
                height: 15.h,
              ),
              TextField(
                controller: _videoLinkController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15.sp),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColor.appBlackColor.withOpacity(0.5),
                        width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColor.appBlackColor.withOpacity(0.7),
                        width: 0.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Video Link",
                  helperText: "Please paste  video id here",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: AppColor.appBlackColor.withOpacity(0.7)),
                  hintText: "Paste Video link ",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: AppColor.appBlackColor.withOpacity(0.5)),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GestureDetector(
                onTap: () {
                  showCalender(context, _dateController);
                },
                child: TextField(
                  controller: _dateController,
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
                    labelText: "Date",
                    labelStyle: Theme.of(context).textTheme.headline4!.copyWith(
                        color: AppColor.appBlackColor.withOpacity(0.7)),
                    hintText: "Choose Date",
                    hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                        color: AppColor.appBlackColor.withOpacity(0.5)),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GestureDetector(
                onTap: () {
                  ref.read(filePickerProvider.notifier).openFilePicker();
                },
                child: TextField(
                  readOnly: false,
                  enabled: false,
                  controller: _pdfController,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.picture_as_pdf_sharp,
                      color: AppColor.primaryColor,
                    ),
                    contentPadding: EdgeInsets.all(15.sp),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColor.appBlackColor.withOpacity(0.5),
                          width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColor.appBlackColor.withOpacity(0.7),
                          width: 0.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Pdf File",
                    labelStyle: Theme.of(context).textTheme.headline4!.copyWith(
                        color: AppColor.appBlackColor.withOpacity(0.7)),
                    hintText: "Choose Pdf File",
                    hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
                        color: AppColor.appBlackColor.withOpacity(0.5)),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Align(
                alignment: Alignment.center,
                child: AppButton(
                    buttonTitle: "Add Homework",
                    callback: () {
                      if (session.value.isEmpty ||
                          classId.value.isEmpty ||
                          subjectId.value.isEmpty ||
                          _dateController.text.isEmpty) {
                        AppSnackBar.showInSnackBar(
                            "Please Fill  details", context);
                        return;
                      } else if (_videoLinkController.text.isEmpty &&
                          pdfFile.value == null) {
                        AppSnackBar.showInSnackBar(
                            "Please Paste video link or choose pdf", context);
                        return;
                      }

                      ref.read(addHomeProvider.notifier).addHomework(
                          session.value,
                          classId.value,
                          subjectId.value,
                          pdfFile.value,
                          _videoLinkController.text,
                          _dateController.text,
                          context);
                    },
                    buttonWidth: 0.8.sw,
                    buttonHeight: 40.h),
              )
            ],
          ),
        ),
      ),
    );
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
