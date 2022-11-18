import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/presentation/application_form/presentation/widget/form_row.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/shared/provider.dart';

class StudentApplicationFormPage extends HookConsumerWidget {
  const StudentApplicationFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Application Form",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColor.appWhite),
          ),
        ),
        body: ref.watch(applicationFormProvider).when(data: (data) {
          return Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Your Application Form",
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: AppColor.primaryColor),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: EdgeInsets.all(5.sp),
                margin: EdgeInsets.all(3.sp),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(
                        color: AppColor.appBlackColor.withOpacity(0.2))),
                child: Column(
                  children: [
                    FormRow(title: "Session", value: data.session!),
                    FormRow(
                        title: "Serial No", value: data.serialNo.toString()),
                    FormRow(
                        title: "Registeraion No",
                        value: data.registrationNo!.toString()),
                    FormRow(title: "Student Name", value: data.studentName!),
                    FormRow(title: "Father Name", value: data.fatherName!),
                    FormRow(title: "Mother Name", value: data.motherName!),
                    FormRow(
                        title: "Date of admission",
                        value: data.dateOfAdmission!),
                    FormRow(
                        title: "Transport Avaliability",
                        value: data.transportAvailabilty!),
                    FormRow(title: "Date of birth", value: data.dateOfBirth!),
                    FormRow(title: "Gender", value: data.gender!),
                    FormRow(title: "Class Name", value: data.classId!),
                    FormRow(title: "Nationality", value: data.nationality!),
                    FormRow(title: "Section", value: data.section!),
                    FormRow(
                        title: "Whatsapp No",
                        value: data.whatsAppNo.toString()),
                    FormRow(title: "category", value: data.category ?? " "),
                    FormRow(
                        title: "Mobile No", value: data.mobNo.toString() ?? ""),
                    FormRow(title: "Relegion", value: data.relegion!),
                    FormRow(title: "Caste", value: data.caste!),
                    FormRow(title: "Address", value: data.address!),
                    FormRow(
                        title: "Previous School Name",
                        value: data.prevSchoolName.toString()),
                    FormRow(
                        title: "Previous School Address",
                        value: data.prevSchoolAddress.toString()),
                    FormRow(
                        title: "Previous Passing year",
                        value: data.prevPassingYear.toString()),
                    FormRow(
                        title: "Previous Percentage",
                        value: data.prevPrecentage.toString()),
                    FormRow(
                        title: "Previous Roll no",
                        value: data.prevRollNo.toString()),
                  ],
                ),
              ),
            ],
          );
        }, error: (e, s) {
          return Center(child: Text(e.toString()));
        }, loading: () {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColor.primaryColor,
            ),
          );
        }));
  }
}
