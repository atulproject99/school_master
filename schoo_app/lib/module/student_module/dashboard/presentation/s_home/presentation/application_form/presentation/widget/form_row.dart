import 'package:flutter/material.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';

class FormRow extends StatelessWidget {
  const FormRow({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Expanded(child: Container()),
        Expanded(
          flex: 4,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline3!.copyWith(),
          ),
        ),
        Expanded(
          flex: 6,
          child: Text(
            " -  $value",
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: AppColor.appBlackColor.withOpacity(0.6)),
          ),
        )
      ],
    );
  }
}
