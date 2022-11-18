import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_button.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_text_field.dart';
import 'package:schoo_app/module/parent_module/p_complain/shared/provider.dart';

class ResponseForm extends HookConsumerWidget {
  const ResponseForm({Key? key, required this.complainId}) : super(key: key);
  final int complainId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _responseController = useTextEditingController();

    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SizedBox(
          height: 0.25.sh,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Your Response",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  AppTextField(
                    maxLines: 8,
                    labelText: "Response",
                    inputType: TextInputType.multiline,
                    hintText: "Response write here",
                    controller: _responseController,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  AppButton(
                      buttonTitle: "Submit",
                      callback: () {
                        if (_responseController.text.isEmpty) {
                          AppSnackBar.showInSnackBar(
                              "Please Write something", context);
                          return;
                        }
                        FocusScopeNode currentFocus = FocusScope.of(context);

                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }

                        ref
                            .read(replyComplainProvider.notifier)
                            .complainResponse(complainId.toString(),
                                _responseController.text, context);
                      },
                      buttonWidth: 251.w,
                      buttonHeight: 40.h),
                ],
              ),
              Positioned(
                top: 5.h,
                right: 5.w,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.close,
                    size: 25.sp,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
