import 'package:allergy_app/core/app_constant.dart';
import 'package:allergy_app/widgets/custom_submit_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpPage extends HookWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPhoneSelected = useState<bool>(true);
    final contactOption = useTextEditingController();
    final issueContent = useTextEditingController();
    final formkey = GlobalKey<FormState>();
    final isFormSubmitted = useState<bool>(false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        centerTitle: true,
        elevation: 0.5,
        leading: GestureDetector(
          // TODO Auto Route
          // TODO screenshot button style and icon

          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Image(
              image: AssetImage('assets/icons/help.png'),
              fit: BoxFit.fitWidth,
              color: AppConstant.primaryColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formkey,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Text(
                'How would you like to reach us',
                style: Theme.of(context).textTheme.headline4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        isPhoneSelected.value = true;
                      },
                      child: Container(
                        width: 135.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38.sp),
                          color: isPhoneSelected.value
                              ? AppConstant.primaryColor
                              : Colors.transparent,
                          border: Border.all(
                            color: isPhoneSelected.value
                                ? AppConstant.primaryColor
                                : AppConstant.subtitle1color,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Phone',
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: isPhoneSelected.value
                                          ? AppConstant.appWhite
                                          : AppConstant.subtitle1color,
                                    ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        isPhoneSelected.value = false;
                      },
                      child: Container(
                        width: 135.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38.sp),
                          color: isPhoneSelected.value
                              ? Colors.transparent
                              : AppConstant.primaryColor,
                          border: Border.all(
                            color: isPhoneSelected.value
                                ? AppConstant.subtitle1color
                                : AppConstant.primaryColor,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'E-mail',
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: isPhoneSelected.value
                                          ? AppConstant.subtitle1color
                                          : AppConstant.appWhite,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                isPhoneSelected.value ? 'Phone number' : 'E-mail address',
                style: Theme.of(context).textTheme.headline5,
              ),
              TextFormField(
                controller: contactOption,
                cursorColor: AppConstant.subtitle1color,
                autofocus: false,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontSize: 12.sp,
                      color: AppConstant.title1color,
                    ),
                keyboardType: isPhoneSelected.value
                    ? TextInputType.number
                    : TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppConstant.subtitle1color,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppConstant.subtitle1color,
                    ),
                  ),
                ),
                validator: (value) {
                  if (isPhoneSelected.value) {
                    if (value!.isEmpty) {
                      return 'Mobile number cannot be empty';
                    }
                    if (value.length != 10) {
                      return 'Please enter a valid mobile number';
                    } else {
                      return null;
                    }
                  } else {
                    if (value!.isEmpty) {
                      return 'E-Mail cannot be empty';
                    }
                    if (!RegExp(
                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-zA-Z0-9+_.-]+.[a-z]")
                        .hasMatch(value)) {
                      return 'Please enter a valid E-Mail';
                    }
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Report a problem/ spam/ abuse',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppConstant.appBgColor,
                  border: Border.all(
                    color: AppConstant.primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(5.0.sp),
                ),
                child: TextFormField(
                  controller: issueContent,
                  minLines: 5,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  cursorColor: AppConstant.subtitle1color,
                  autofocus: false,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontSize: 12.sp,
                        color: AppConstant.title1color,
                      ),
                  decoration: InputDecoration(
                    hintText:
                        'Type your issue here. We will reach out to you shortly!',
                    hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontSize: 12.sp,
                        ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your query!';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: DottedBorder(
                  color: AppConstant.primaryColor,
                  strokeWidth: 1,
                  child: Container(
                    width: 330.w,
                    height: 30.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: AppConstant.appBgColor,
                    ),
                    // TODO change icon
                    child: TextButton.icon(
                      onPressed: () {},
                      style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                          (states) => AppConstant.primaryColor,
                        ),
                      ),
                      icon: const Icon(
                        Icons.attachment_outlined,
                        color: AppConstant.title1color,
                      ),
                      label: Text(
                        'Screenshot',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    child: CustomSubmitButton(
                      buttonTitle: isFormSubmitted.value
                          ? 'HELP SUBMITTED'
                          : 'SUBMIT HELP',
                      callback: () {
                        if (formkey.currentState!.validate()) {
                          isFormSubmitted.value = true;
                        }
                      },
                      buttonWidth: 320.w,
                      buttonHeight: 40.h,
                      bgColor: isFormSubmitted.value
                          ? const Color(0xFF999999)
                          : AppConstant.primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
