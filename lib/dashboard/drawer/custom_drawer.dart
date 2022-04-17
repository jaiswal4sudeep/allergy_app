import 'package:allergy_app/core/app_constant.dart';
import 'package:allergy_app/dashboard/drawer/presentation/allerg_card_page.dart';
import 'package:allergy_app/dashboard/drawer/presentation/bookmarks_page.dart';
import 'package:allergy_app/dashboard/drawer/presentation/explore_page.dart';
import 'package:allergy_app/dashboard/drawer/presentation/feedback_page.dart';
import 'package:allergy_app/dashboard/drawer/presentation/help_page.dart';
import 'package:allergy_app/dashboard/drawer/presentation/settings_page.dart';
import 'package:allergy_app/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TODO close button and alignment
                  // Container(
                  //   color: Colors.amberAccent,
                  //   width: 50.h,
                  //   height: 50.h,
                  //   child: const ImageIcon(
                  //     AssetImage('assets/icons/clear.png'),
                  //   ),
                  // ),
                  UserAccountsDrawerHeader(
                    decoration: const BoxDecoration(
                      color: AppConstant.appWhite,
                    ),
                    accountName: Text(
                      "Rohan Sakorey",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    accountEmail: Text(
                      "user_name",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    currentAccountPicture: CircleAvatar(
                      radius: 45.sp,
                      backgroundColor: AppConstant.primaryColor,
                      child: Text(
                        "R",
                        style: TextStyle(
                          fontSize: 28.0.sp,
                          color: AppConstant.appWhite,
                        ),
                      ),
                    ),
                  ),
                  const CustomDivider(),
                  ListTile(
                    leading: Image(
                      image: const AssetImage('assets/icons/aller_g_card.png'),
                      width: 20.w,
                      fit: BoxFit.fitHeight,
                    ),
                    title: Text(
                      'Aller-G card',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    subtitle: Text(
                      'create Aller-G card in various languages',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    //TODO
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AllerGCardPage(),
                        ),
                      );
                    },
                  ),
                  const CustomDivider(),
                  ListTile(
                    leading: Image(
                      image: const AssetImage('assets/icons/callender.png'),
                      width: 20.w,
                      fit: BoxFit.fitHeight,
                    ),
                    title: Text(
                      'Explore',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    subtitle: Text(
                      'Check new places, products on the go',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    //TODO
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ExplorePage(),
                        ),
                      );
                    },
                  ),
                  const CustomDivider(),
                  ListTile(
                    leading: Image(
                      image: const AssetImage('assets/icons/settings.png'),
                      width: 20.w,
                      fit: BoxFit.fitHeight,
                    ),
                    title: Text(
                      'Settings',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    subtitle: Text(
                      'Privacy, Security, Account',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    onTap: () {
                      // TODO auto route
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SettingPage(),
                        ),
                      );
                    },
                  ),
                  const CustomDivider(),
                  ListTile(
                    leading: Image(
                      image: const AssetImage('assets/icons/bookmark.png'),
                      color: AppConstant.primaryColor,
                      width: 20.w,
                      fit: BoxFit.fitHeight,
                    ),
                    title: Text(
                      'Bookmarks',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    subtitle: Text(
                      'Find saved posts here',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    // TODO
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const BookmarksPage(),
                        ),
                      );
                    },
                  ),
                  const CustomDivider(),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  const CustomDivider(),
                  ListTile(
                    leading: Image(
                      image: const AssetImage('assets/icons/feedback.png'),
                      width: 20.w,
                      fit: BoxFit.fitHeight,
                    ),
                    title: Text(
                      'Feedback',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    subtitle: Text(
                      'We appreciate your valuable feedback',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    //TODO
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FeedbackPage(),
                        ),
                      );
                    },
                  ),
                  const CustomDivider(),
                  ListTile(
                    leading: Image(
                      image: const AssetImage('assets/icons/help.png'),
                      width: 20.w,
                      fit: BoxFit.fitHeight,
                    ),
                    title: Text(
                      'Need Help?',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    subtitle: Text(
                      'We are here to help you ',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    // TODO
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HelpPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
