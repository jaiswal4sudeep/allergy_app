import 'package:allergy_app/core/app_constant.dart';
import 'package:allergy_app/widgets/custom_submit_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedbackPage extends HookWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final issueContent = useTextEditingController();
    final formkey = GlobalKey<FormState>();
    final isTagSelected = useState<int>(0);
    final noOfStars = useState<int>(4);
    final isFormSubmitted = useState<bool>(false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback'),
        centerTitle: true,
        elevation: 0.5,
        leading: GestureDetector(
          // TODO Auto Route
          // TODO desc hinttext
          // TODO screenshot button style and icon
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formkey,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.h,
                  ),
                  child: Container(
                    width: 330.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      color: AppConstant.appBgColor,
                      border: Border.all(
                        color: AppConstant.primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'How well did we do....?',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          width: 250.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  noOfStars.value = 1;
                                },
                                child: Icon(
                                  noOfStars.value > 0
                                      ? Icons.star
                                      : Icons.star_outline,
                                  size: 36.sp,
                                  color: noOfStars.value > 0
                                      ? AppConstant.primaryColor
                                      : AppConstant.subtitle1color,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  noOfStars.value = 2;
                                },
                                child: Icon(
                                  noOfStars.value > 1
                                      ? Icons.star
                                      : Icons.star_outline,
                                  size: 36.sp,
                                  color: noOfStars.value > 1
                                      ? AppConstant.primaryColor
                                      : AppConstant.subtitle1color,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  noOfStars.value = 3;
                                },
                                child: Icon(
                                  noOfStars.value > 2
                                      ? Icons.star
                                      : Icons.star_outline,
                                  size: 36.sp,
                                  color: noOfStars.value > 2
                                      ? AppConstant.primaryColor
                                      : AppConstant.subtitle1color,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  noOfStars.value = 4;
                                },
                                child: Icon(
                                  noOfStars.value > 3
                                      ? Icons.star
                                      : Icons.star_outline,
                                  size: 36.sp,
                                  color: noOfStars.value > 3
                                      ? AppConstant.primaryColor
                                      : AppConstant.subtitle1color,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  noOfStars.value = 5;
                                },
                                child: Icon(
                                  noOfStars.value > 4
                                      ? Icons.star
                                      : Icons.star_outline,
                                  size: 36.sp,
                                  color: noOfStars.value > 4
                                      ? AppConstant.primaryColor
                                      : AppConstant.subtitle1color,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Submit your valueable feedback',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Tags',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      isTagSelected.value = 0;
                    },
                    child: Chip(
                      label: Text(
                        'Bug',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: isTagSelected.value == 0
                              ? AppConstant.appWhite
                              : AppConstant.primaryColor,
                        ),
                      ),
                      backgroundColor: isTagSelected.value == 0
                          ? AppConstant.primaryColor
                          : Colors.transparent,
                      shape: const StadiumBorder(
                        side: BorderSide(color: AppConstant.primaryColor),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      isTagSelected.value = 1;
                    },
                    child: Chip(
                      label: Text(
                        'Features',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: isTagSelected.value == 1
                              ? AppConstant.appWhite
                              : AppConstant.primaryColor,
                        ),
                      ),
                      backgroundColor: isTagSelected.value == 1
                          ? AppConstant.primaryColor
                          : Colors.transparent,
                      shape: const StadiumBorder(
                        side: BorderSide(
                          color: AppConstant.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      isTagSelected.value = 2;
                    },
                    child: Chip(
                      label: Text(
                        'Design',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: isTagSelected.value == 2
                              ? AppConstant.appWhite
                              : AppConstant.primaryColor,
                        ),
                      ),
                      backgroundColor: isTagSelected.value == 2
                          ? AppConstant.primaryColor
                          : Colors.transparent,
                      shape: const StadiumBorder(
                        side: BorderSide(
                          color: AppConstant.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      isTagSelected.value = 3;
                    },
                    child: Chip(
                      label: Text(
                        'Idea',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: isTagSelected.value == 3
                              ? AppConstant.appWhite
                              : AppConstant.primaryColor,
                        ),
                      ),
                      backgroundColor: isTagSelected.value == 3
                          ? AppConstant.primaryColor
                          : Colors.transparent,
                      shape: const StadiumBorder(
                        side: BorderSide(
                          color: AppConstant.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      isTagSelected.value = 4;
                    },
                    child: Chip(
                      label: Text(
                        'Others',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: isTagSelected.value == 4
                              ? AppConstant.appWhite
                              : AppConstant.primaryColor,
                        ),
                      ),
                      backgroundColor: isTagSelected.value == 4
                          ? AppConstant.primaryColor
                          : Colors.transparent,
                      shape: const StadiumBorder(
                        side: BorderSide(
                          color: AppConstant.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Description',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 10.h,
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
                        'Type your feedback here. Any and every feedback of yours is important to us!',
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
                height: 20.h,
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
                    //TODO change icon
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
              SizedBox(
                height: 10.h,
              ),
              CustomSubmitButton(
                buttonTitle: isFormSubmitted.value
                    ? 'FEEDBACK SUBMITTED'
                    : 'SUBMIT FEEDBACK',
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
            ],
          ),
        ),
      ),
    );
  }
}
