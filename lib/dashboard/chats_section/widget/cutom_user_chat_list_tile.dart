import 'package:allergy_app/core/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUserChatListTile extends StatelessWidget {
  const CustomUserChatListTile({
    Key? key,
    required this.title,
    required this.subTitle,
    this.callback,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(),
      title: Text(
        title,
        style: TextStyle(
          color: AppConstant.title1color,
          fontSize: 16.sp,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(
          color: AppConstant.title1color,
        ),
      ),
      onTap: callback,
    );
  }
}
