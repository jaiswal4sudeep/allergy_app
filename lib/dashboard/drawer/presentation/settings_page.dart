import 'package:allergy_app/core/app_constant.dart';
import 'package:allergy_app/dashboard/drawer/presentation/blocked_accounts_page.dart';
import 'package:allergy_app/widgets/custom_divider.dart';
import 'package:allergy_app/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingPage extends HookWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPrivateAccount = useState<bool>(true);
    final isDataSaverOn = useState<bool>(true);
    final isHighQualityUploadsPermissionOn = useState<bool>(true);
    final locationAccess = useState<bool>(false);
    final notificationPermission = useState<bool>(false);
    final genderIndex = useState<int>(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        elevation: 0.5,
        leading: GestureDetector(
          // Todo Auto Route
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
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              'Privacy Settings',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: 16.sp,
                  ),
            ),
            CustomSwitch(
              defaultValue: isPrivateAccount,
              btnText: 'Private account',
              callback: (a) {
                isPrivateAccount.value = !isPrivateAccount.value;
              },
              tapFunc: () {
                isPrivateAccount.value = !isPrivateAccount.value;
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 4.h,
              ),
              title: Text(
                'Blocked accounts',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
              ),
              trailing: const Icon(
                Icons.keyboard_arrow_right,
              ),
              onTap: () {
                // todo auto route
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BlockedAccountPage(),
                  ),
                );
              },
            ),
            const CustomDivider(),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h),
              child: Text(
                'Security Settings',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 16.sp,
                    ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 4.h,
              ),
              title: Text(
                'Email',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
              ),
              trailing: const Text(
                'user@mail.com',
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 4.h,
              ),
              title: Text(
                'Phone number',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
              ),
              trailing: const Text(
                '+Add',
                style: TextStyle(
                  color: AppConstant.primaryColor,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 4.h,
              ),
              title: Text(
                'Date of birth',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
              ),
              trailing: const Text(
                '+Add',
                style: TextStyle(
                  color: AppConstant.primaryColor,
                ),
              ),
            ),
            const CustomDivider(),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h),
              child: Text(
                'Account Settings',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 16.sp,
                    ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 4.h,
              ),
              title: Text(
                'Language',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
              ),
              trailing: const Text(
                'English',
              ),
            ),
            const CustomDivider(),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Account Verification',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 14.sp,
                      color: AppConstant.title1color,
                    ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 4.h,
                  horizontal: 2.w,
                ),
                child: const Text(
                  'For certified NGOs or publically known people, please drop an email at support@tamely.in to get certified. NGOs will be able to get donations directly from users.',
                ),
              ),
            ),
            const CustomDivider(),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h),
              child: Text(
                'General info',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 16.sp,
                    ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 4.h,
              ),
              title: Text(
                'Date joined',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              trailing: const Text(
                '12 jan 2020',
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 4.h,
              ),
              title: Text(
                'Country',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              trailing: const Text(
                'India',
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 4.h,
              ),
              title: Text(
                'Gender',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              // todo improve gender list
              trailing: SizedBox(
                width: 160.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        genderIndex.value = 0;
                      },
                      child: Chip(
                        label: Text(
                          'M',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: genderIndex.value == 0
                                ? AppConstant.appWhite
                                : AppConstant.title1color,
                          ),
                        ),
                        backgroundColor: genderIndex.value == 0
                            ? AppConstant.primaryColor
                            : Colors.transparent,
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: genderIndex.value == 0
                                ? AppConstant.primaryColor
                                : AppConstant.subtitle1color,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        genderIndex.value = 1;
                      },
                      child: Chip(
                        label: Text(
                          'F',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: genderIndex.value == 1
                                ? AppConstant.appWhite
                                : AppConstant.title1color,
                          ),
                        ),
                        backgroundColor: genderIndex.value == 1
                            ? AppConstant.primaryColor
                            : Colors.transparent,
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: genderIndex.value == 1
                                ? AppConstant.primaryColor
                                : AppConstant.subtitle1color,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        genderIndex.value = 2;
                      },
                      child: Chip(
                        label: Text(
                          'others',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: genderIndex.value == 2
                                ? AppConstant.appWhite
                                : AppConstant.title1color,
                          ),
                        ),
                        backgroundColor: genderIndex.value == 2
                            ? AppConstant.primaryColor
                            : Colors.transparent,
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: genderIndex.value == 2
                                ? AppConstant.primaryColor
                                : AppConstant.subtitle1color,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const CustomDivider(),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h),
              child: Text(
                'Data usage',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 16.sp,
                    ),
              ),
            ),
            CustomSwitch(
              defaultValue: isDataSaverOn,
              btnText: 'Use less mobile data',
              callback: (a) {
                isDataSaverOn.value = !isDataSaverOn.value;
              },
              tapFunc: () {
                isDataSaverOn.value = !isDataSaverOn.value;
              },
            ),
            CustomSwitch(
              defaultValue: isHighQualityUploadsPermissionOn,
              btnText: 'High quality uploads',
              callback: (a) {
                isHighQualityUploadsPermissionOn.value =
                    !isHighQualityUploadsPermissionOn.value;
              },
              tapFunc: () {
                isHighQualityUploadsPermissionOn.value =
                    !isHighQualityUploadsPermissionOn.value;
              },
            ),
            const CustomDivider(),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h),
              child: Text(
                'Permissions',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 16.sp,
                    ),
              ),
            ),
            CustomSwitch(
              defaultValue: locationAccess,
              btnText: 'Allow access to location',
              callback: (a) {
                locationAccess.value = !locationAccess.value;
              },
              tapFunc: () {
                locationAccess.value = !locationAccess.value;
              },
            ),
            CustomSwitch(
              defaultValue: notificationPermission,
              btnText: 'Allow push notification',
              callback: (a) {
                notificationPermission.value = !notificationPermission.value;
              },
              tapFunc: () {
                notificationPermission.value = !notificationPermission.value;
              },
            ),
            const CustomDivider(),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Logout',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

