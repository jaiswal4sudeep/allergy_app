import 'package:allergy_app/core/app_constant.dart';
import 'package:allergy_app/dashboard/chats_section/chats_user_details_page.dart';
import 'package:allergy_app/widgets/custom_divider.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsUserPage extends HookWidget {
  const ChatsUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userMsg = useTextEditingController();
    final msgSent = useState<String?>(null);
    final noOfMsg = useState<int>(0);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        leading: GestureDetector(
          // TODO Auto Route
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: GestureDetector(
          onTap: () {
            // TODO
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ChatsUserDetailsPage(),
              ),
            );
          },
          child: Row(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  'Darlene Steward',
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {},
              child: const Image(
                image: AssetImage(
                  'assets/icons/calling.png',
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {},
              child: const Image(
                image: AssetImage(
                  'assets/icons/video_call.png',
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: AppConstant.appWhite,
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: noOfMsg.value,
                    itemBuilder: (context, index) {
                      return BubbleNormal(
                        text: msgSent.value ?? '',
                        isSender: true,
                        color: AppConstant.primaryColor,
                        tail: true,
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          color: AppConstant.appWhite,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          const CustomDivider(),
          SizedBox(
            height: 50.h,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/camera.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/image.png',
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 233, 233),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: TextField(
                          controller: userMsg,
                          autofocus: false,
                          textInputAction: TextInputAction.send,
                          cursorColor: AppConstant.subtitle1color,
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    fontSize: 12.sp,
                                    color: AppConstant.title1color,
                                  ),
                          decoration: InputDecoration(
                            hintText: 'Text here',
                            suffixIcon: Image.asset(
                              'assets/icons/emoji.png',
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 233, 233, 233),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 233, 233, 233),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 233, 233, 233),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        if (userMsg.text.isNotEmpty) {
                          noOfMsg.value++;
                          msgSent.value = userMsg.text;
                          userMsg.clear();
                        }
                      },
                      child: RotationTransition(
                        turns: const AlwaysStoppedAnimation(45 / 360),
                        child: Image.asset(
                          'assets/icons/send.png',
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
    );
  }
}
