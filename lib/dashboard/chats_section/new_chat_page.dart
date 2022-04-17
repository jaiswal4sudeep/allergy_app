// ignore_for_file: avoid_print

import 'package:allergy_app/core/app_constant.dart';
import 'package:allergy_app/dashboard/chats_section/chats_user_page.dart';
import 'package:allergy_app/widgets/custom_divider.dart';
import 'package:allergy_app/widgets/custom_search_bar.dart';
import 'package:allergy_app/widgets/custom_submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewChatPage extends HookWidget {
  const NewChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAnyUserSelected = useState<bool>(false);
    final searchQuery = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Message'),
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
        actions: [
          CustomSubmitButton(
            buttonTitle: 'Chat',
            callback: isAnyUserSelected.value
                ? () {
                    print('Active');
                  }
                : () {
                    print('Inactive');
                  },
            buttonWidth: 85.w,
            buttonHeight: 30.h,
            textColor:
                isAnyUserSelected.value ? AppConstant.appWhite : Colors.white70,
            bgColor: isAnyUserSelected.value
                ? AppConstant.primaryColor
                : const Color(0xFF999999),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomSearchBar(
                defaultValue: searchQuery,
                hintText: 'Search for people to add in conversation',
                isBorder: false,
              ),
            ),
            const CustomDivider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Recommended',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 16.sp,
                    ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(),
                    title: Text(
                      'Darlene Steward',
                      style: TextStyle(
                        color: AppConstant.title1color,
                        fontSize: 16.sp,
                      ),
                    ),
                    subtitle: const Text(
                      'user_name',
                      style: TextStyle(
                        color: AppConstant.title1color,
                      ),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        isAnyUserSelected.value = !isAnyUserSelected.value;
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          isAnyUserSelected.value
                              ? Icons.check_circle
                              : Icons.radio_button_unchecked,
                          color: isAnyUserSelected.value
                              ? AppConstant.primaryColor
                              : AppConstant.subtitle1color,
                        ),
                      ),
                    ),
                    onTap: () {
                      //TODO
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ChatsUserPage(),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
