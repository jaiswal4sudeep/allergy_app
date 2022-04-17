import 'package:allergy_app/core/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({
    Key? key,
    required this.buttonTitle,
    required this.callback,
    required this.buttonWidth,
    required this.buttonHeight,
    this.fontSize,
    this.bgColor = AppConstant.primaryColor,
    this.textColor = AppConstant.appWhite,
  }) : super(key: key);

  final String buttonTitle;
  final VoidCallback callback;
  final double buttonWidth;
  final double buttonHeight;
  final double? fontSize;
  final Color? bgColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: callback,
        child: Container(
          width: buttonWidth,
          height: buttonHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38.sp),
            color: bgColor,
          ),
          child: Center(
            child: Text(
              buttonTitle,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: textColor,
                    fontSize: fontSize,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
