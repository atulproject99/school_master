import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';

class AppDropDownField extends StatelessWidget {
  const AppDropDownField(
      {Key? key,
      required this.hintText,
      required this.onSelect,
      required this.list})
      : super(key: key);

  final String hintText;
  final Function(String) onSelect;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.sp),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border:
                    Border.all(color: AppColor.primaryColor.withOpacity(0.9))),
            width: 1.sw,
            // padding: EdgeInsets.only(top: 5.h, left: 5.sp),
            child: DropdownButtonFormField(
                isExpanded: true,
                isDense: true,
                alignment: Alignment.center,
                hint: Text(
                  hintText,
                  style: Theme.of(context).textTheme.headline5!.copyWith(),
                ),
                decoration: const InputDecoration(
                    contentPadding: null,
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.person,
                      color: AppColor.secondaryColor,
                    )),
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: Theme.of(context).textTheme.headline5!.copyWith(),
                    ),
                  );
                }).toList(),
                onChanged: (d) {
                  onSelect(d.toString());
                }),
          ),
        ),
      ],
    );
  }
}
