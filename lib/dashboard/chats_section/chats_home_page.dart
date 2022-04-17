import 'package:allergy_app/core/app_constant.dart';
import 'package:allergy_app/dashboard/chats_section/chats_user_page.dart';
import 'package:allergy_app/dashboard/chats_section/new_chat_page.dart';
import 'package:allergy_app/dashboard/chats_section/widget/cutom_user_chat_list_tile.dart';
import 'package:allergy_app/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsHomePage extends HookWidget {
  const ChatsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchQuery = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        leading: GestureDetector(
          // TODO Auto Route
          // TODO page scrolling
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
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
                        Icons.add,
                        color: AppConstant.appBgColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NewChatPage(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage('assets/icons/edit.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomSearchBar(
                defaultValue: searchQuery,
                hintText: 'Search chats',
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 13,
                itemBuilder: (context, index) {
                  return CustomUserChatListTile(
                    title: 'Darlene Steward',
                    subTitle: 'Plz take a look at the images',
                    //TODO
                    callback: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ChatsUserPage(),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
