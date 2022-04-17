import 'package:allergy_app/core/app_constant.dart';
import 'package:allergy_app/dashboard/chats_section/chats_home_page.dart';
import 'package:allergy_app/dashboard/emergency_mode_section/emerygency_mode_page.dart';
import 'package:allergy_app/dashboard/notification_section/notification_home_page.dart';
import 'package:allergy_app/dashboard/presentation/a_feed_page.dart';
import 'package:allergy_app/dashboard/presentation/b_community_page.dart';
import 'package:allergy_app/dashboard/presentation/c_for_you_page.dart';
import 'package:allergy_app/dashboard/presentation/d_services_page.dart';
import 'package:allergy_app/dashboard/presentation/e_profile_page.dart';
import 'package:allergy_app/dashboard/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPage extends HookWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState<int>(0);

    final bottomTabs = [
      const FeedPage(),
      const CommunityPage(),
      const ForYouPage(),
      const ServicesPage(),
      const ProfilePage(),
    ];

    final List<BottomNavigationBarItem> navList = [
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(
            currentIndex.value == 0
                ? 'assets/icons/a_home_sel.png'
                : 'assets/icons/a_home.png',
          ),
        ),
        label: "Feed",
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(
            currentIndex.value == 1
                ? 'assets/icons/b_community_sel.png'
                : 'assets/icons/b_community.png',
          ),
        ),
        label: "Community",
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(
            currentIndex.value == 2
                ? 'assets/icons/c_for_you_sel.png'
                : 'assets/icons/c_for_you.png',
          ),
        ),
        label: "For you",
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(
            currentIndex.value == 3
                ? 'assets/icons/d_services_sel.png'
                : 'assets/icons/d_services.png',
          ),
        ),
        label: "Services",
      ),
      const BottomNavigationBarItem(
        // TODO change icon
        // icon: ImageIcon(
        //   AssetImage('assets/icons/bottom_nav_icons/e_profile.png'),
        // ),
        icon: Icon(Icons.person),
        label: "Profile",
      ),
    ];

    return Scaffold(
      appBar: currentIndex.value == 1
          ? null
          : AppBar(
              backgroundColor: currentIndex.value == 4
                  ? AppConstant.appBgColor
                  : AppConstant.appWhite,
              elevation: 0.5,
              leading: Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    child: const Image(
                      image: AssetImage(
                        'assets/images/e_profile_image/drawer.png',
                      ),
                    ),
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: CircleAvatar(
                      radius: 18.sp,
                      backgroundColor: AppConstant.secondaryColor,
                      child: CircleAvatar(
                        radius: 16.sp,
                        backgroundColor: AppConstant.appBgColor,
                        child: CircleAvatar(
                          radius: 15.sp,
                          backgroundColor: AppConstant.primaryColor,
                          child: const Center(
                            child: Icon(
                              Icons.person,
                              color: AppConstant.appBgColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    //TODO
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const EmergencyModePage(),
                        ),
                      );
                    },

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: CircleAvatar(
                        radius: 18.sp,
                        backgroundColor: AppConstant.secondaryColor,
                        child: CircleAvatar(
                          radius: 16.sp,
                          backgroundColor: AppConstant.appBgColor,
                          child: CircleAvatar(
                            radius: 15.sp,
                            backgroundColor: AppConstant.primaryColor,
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: AppConstant.appBgColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              titleSpacing: 25.w,
              actions: [
                GestureDetector(
                  onTap: () {
                    //TODO
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NotificationHomePage(),
                      ),
                    );
                  },
                  child: const Image(
                    image: AssetImage(
                      'assets/images/e_profile_image/notification.png',
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //TODO
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ChatsHomePage(),
                      ),
                    );
                  },
                  child: const Image(
                    image: AssetImage(
                      'assets/images/e_profile_image/chats.png',
                    ),
                  ),
                )
              ],
            ),
      drawer: const CustomDrawer(),
      body: bottomTabs[currentIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppConstant.appWhite,
        currentIndex: currentIndex.value,
        onTap: (index) {
          currentIndex.value = index;
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 20.sp,
        items: [
          ...navList,
        ],
      ),
    );
  }
}
