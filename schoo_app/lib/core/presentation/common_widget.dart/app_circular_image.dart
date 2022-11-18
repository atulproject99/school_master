import 'dart:io';

import 'package:flutter/material.dart';
import 'package:schoo_app/core/presentation/colors/app_colors.dart';
import 'package:schoo_app/core/presentation/images/app_images.dart';

class UserCircularImage extends StatelessWidget {
  const UserCircularImage(
      {Key? key,
      this.profileUrl = "",
      this.height = 20,
      this.width = 20,
      this.pathFile = "",
      this.networkUrl = "",
      this.type = 1,
      this.assetsUrl = ""})
      : super(key: key);

  final String profileUrl;
  final double height;
  final double width;
  final String? pathFile;
  final String? networkUrl;
  final int type;
  final String assetsUrl;

  @override
  Widget build(BuildContext context) {
    print(networkUrl);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: pathFile == ""
              ? networkUrl == ""
                  ? DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          assetsUrl.isEmpty ? AppImages.user_pic : assetsUrl))
                  : const DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(""))
              : DecorationImage(
                  fit: BoxFit.fill, image: FileImage(File(pathFile!))),
          border: Border.all(color: AppColor.primaryColor)),
      margin: const EdgeInsets.all(2),
    );
  }
}
