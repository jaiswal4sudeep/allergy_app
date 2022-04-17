import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    Key? key,
    required this.defaultValue,
    required this.btnText,
    required this.callback,
    required this.tapFunc,
  }) : super(key: key);

  final ValueNotifier<bool> defaultValue;
  final String btnText;
  final Function(bool) callback;
  final VoidCallback tapFunc;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 4.h,
      ),
      title: Text(
        btnText,
        style: Theme.of(context).textTheme.headline4!.copyWith(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
            ),
      ),
      onTap: tapFunc,
      trailing: Switch.adaptive(
        value: defaultValue.value,
        onChanged: callback,
      ),
    );
  }
}
