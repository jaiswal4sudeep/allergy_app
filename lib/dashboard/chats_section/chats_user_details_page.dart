import 'package:allergy_app/core/app_constant.dart';
import 'package:allergy_app/dashboard/chats_section/widget/cutom_user_chat_list_tile.dart';
import 'package:allergy_app/dashboard/drawer/presentation/settings_page.dart';
import 'package:allergy_app/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsUserDetailsPage extends HookWidget {
  const ChatsUserDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final muteMsg = useState<bool>(false);
    final muteNoti = useState<bool>(false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomUserChatListTile(
              title: 'Darlene Steward',
              subTitle: 'user_name',
            ),
            CustomSwitch(
              defaultValue: muteMsg,
              btnText: 'Mute Messages',
              callback: (a) {
                muteMsg.value = !muteMsg.value;
              },
              tapFunc: () {
                muteMsg.value = !muteMsg.value;
              },
            ),
            CustomSwitch(
              defaultValue: muteNoti,
              btnText: 'Mute Notifications',
              callback: (a) {
                muteNoti.value = !muteNoti.value;
              },
              tapFunc: () {
                muteNoti.value = !muteNoti.value;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Text(
                'Report',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Block',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: AppConstant.primaryColor,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
