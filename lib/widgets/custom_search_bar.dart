import 'package:allergy_app/core/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
    required this.defaultValue,
    this.hintText,
    this.isBorder = true,
  }) : super(key: key);

  final TextEditingController defaultValue;
  final String? hintText;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: defaultValue,
      autofocus: false,
      cursorColor: AppConstant.subtitle1color,
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
            fontSize: 12.sp,
            color: AppConstant.title1color,
          ),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(
          Icons.search,
          color: AppConstant.title1color,
        ),
        border: isBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              )
            : InputBorder.none,
        focusedBorder: isBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              )
            : InputBorder.none,
      ),
    );
  }
}
