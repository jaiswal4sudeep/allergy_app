import 'package:allergy_app/core/app_constant.dart';
import 'package:allergy_app/widgets/custom_divider.dart';
import 'package:allergy_app/widgets/custom_submit_button.dart';
import 'package:allergy_app/widgets/profile_stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: 20.h,
            right: 10.w,
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.edit_outlined,
                color: AppConstant.primaryColor,
              ),
              label: Text(
                'Edit',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: AppConstant.primaryColor,
                    ),
              ),
            ),
          ),
          Positioned(
            top: 50.h,
            left: -15.w,
            child: Image(
              image: const AssetImage(
                'assets/images/e_profile_image/hand1.png',
              ),
              width: 120.w,
              fit: BoxFit.fitHeight,
              // color: Colors.black,
            ),
          ),
          Positioned(
            top: 120.h,
            right: -25.w,
            child: Image(
              image: const AssetImage(
                'assets/images/e_profile_image/hand2.png',
              ),
              width: 120.w,
              fit: BoxFit.fitHeight,
              // color: Colors.black,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                // physics: const BouncingScrollPhysics(),
                children: [
                  Container(
                    color: AppConstant.appBgColor,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image(
                            image: const AssetImage(
                              'assets/images/e_profile_image/profile_image_pic.png',
                            ),
                            width: 80.w,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'UserName',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'user_name ',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(fontSize: 12.sp),
                              ),
                              Icon(
                                Icons.fiber_manual_record,
                                size: 8.sp,
                                color: AppConstant.primaryColor,
                              ),
                              Text(
                                ' 0 animals',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                      fontSize: 12.sp,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomDivider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const ProfileStats(
                              count: '0',
                              data: 'Posts',
                            ),
                            const ProfileStats(
                              count: '0',
                              data: 'Followers',
                            ),
                            const ProfileStats(
                              count: '0',
                              data: 'Following',
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: const AssetImage(
                                    'assets/images/e_profile_image/hearts.png',
                                  ),
                                  width: 28.w,
                                  fit: BoxFit.fitHeight,
                                ),
                                Text(
                                  '0',
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: AppConstant.appWhite,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Complete your Profile',
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                                Text(
                                  '0 out of 2',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                        color: const Color(0xFF6070F9),
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100.w,
                                height: 120.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: const Offset(0, 4),
                                      blurRadius: 8.sp,
                                      spreadRadius: 1.sp,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: const AssetImage(
                                        'assets/images/e_profile_image/person.png',
                                      ),
                                      width: 24.sp,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    Text(
                                      'Add your short bio, profile picture',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                            letterSpacing: 0.5,
                                          ),
                                    ),
                                    CustomSubmitButton(
                                      buttonTitle: 'Add details',
                                      callback: () {},
                                      buttonWidth: 85.w,
                                      buttonHeight: 20.h,
                                      fontSize: 10.sp,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100.w,
                                height: 120.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: const Offset(0, 4),
                                      blurRadius: 8.sp,
                                      spreadRadius: 1.sp,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: const AssetImage(
                                        'assets/images/e_profile_image/group.png',
                                      ),
                                      width: 24.sp,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    Text(
                                      'Follow at level 5 people to improve feed suggestions',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                            letterSpacing: 0.5,
                                          ),
                                    ),
                                    CustomSubmitButton(
                                      buttonTitle: 'Follow people',
                                      callback: () {},
                                      buttonWidth: 85.w,
                                      buttonHeight: 20.h,
                                      fontSize: 10.sp,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100.w,
                                height: 120.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: const Offset(0, 4),
                                      blurRadius: 8.sp,
                                      spreadRadius: 1.sp,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Who have food allergy?',
                                      textAlign: TextAlign.center,
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                    Text(
                                      'Choose option',
                                      textAlign: TextAlign.center,
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          const CustomDivider(),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Aller-G Profile',
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                ),
                              ],
                            ),
                          ),
                          const CustomDivider(),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'My Posts',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                radius: 42.sp,
                                backgroundColor: AppConstant.secondaryColor,
                                child: CircleAvatar(
                                  radius: 40.sp,
                                  backgroundColor: AppConstant.appWhite,
                                  child: CircleAvatar(
                                    radius: 38.sp,
                                    backgroundColor: const Color(0xFFFEF7F9),
                                    child: Icon(
                                      Icons.add_rounded,
                                      color: AppConstant.primaryColor,
                                      size: 50.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ),
        ],
      ),
    );
  }
}
