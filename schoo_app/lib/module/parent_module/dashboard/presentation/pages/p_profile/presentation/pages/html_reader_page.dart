import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';

class HtmlReaderPage extends StatelessWidget {
  const HtmlReaderPage({Key? key, required this.title, required this.data})
      : super(key: key);

  final String title;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            size: 20.sp,
            color: AppColor.appWhite,
          ),
        ),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: AppColor.appWhite),
        ),
      ),
      body: ListView(
        children: [
          Html(
            data: data,
          )
        ],
      ),
    );
  }
}
