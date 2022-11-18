import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/acedemic_session.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/subject.dart';

class CustomDropdown extends StatelessWidget {
  CustomDropdown(
      {Key? key,
      required this.list,
      required this.onChanged,
      this.initialValue})
      : super(key: key);
  final List<dynamic> list;
  Function(dynamic value) onChanged;
  dynamic initialValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: AppColor.appBlackColor.withOpacity(0.3))),
      child: DropdownButtonFormField<dynamic>(
          isExpanded: false,
          isDense: true,
          value: initialValue,
          alignment: Alignment.center,
          hint: Text(
            "",
            style: Theme.of(context).textTheme.headline5!.copyWith(),
          ),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(5),
            border: InputBorder.none,
          ),
          items: list.map<DropdownMenuItem<dynamic>>((dynamic value) {
            return DropdownMenuItem<dynamic>(
              value: value,
              child: Text(
                value is AcedemicSession
                    ? value.session
                    : value is Subject
                        ? value.subjectName
                        : value.studentclass,
                style: Theme.of(context).textTheme.headline3!.copyWith(),
              ),
            );
          }).toList(),
          onSaved: onChanged,
          onChanged: onChanged),
    );
  }
}
