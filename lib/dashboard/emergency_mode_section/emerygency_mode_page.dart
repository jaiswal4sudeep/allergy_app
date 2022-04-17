import 'dart:async';

import 'package:allergy_app/core/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmergencyModePage extends HookWidget {
  const EmergencyModePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isTimerStarted = useState<bool>(false);
    // final isEmergencyStarted = useState<bool>(false);
    final timerValue = useState<int>(0);

    void startTime() {
      isTimerStarted.value = true;
      if (timerValue.value != 0) {
        timerValue.value = 0;
      }
      Timer.periodic(
        const Duration(seconds: 1),
        (timer) {
          if (timerValue.value < 3) {
            timerValue.value++;
          }
          // else if (timerValue.value == 3) {
          // isEmergencyStarted.value = true;
          // }
          else {
            timer.cancel();
          }
        },
      );
    }

    void resetTime() {
      timerValue.value = 0;
      isTimerStarted.value = false;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Mode'),
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
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Center(
        child:
            //  isEmergencyStarted.value
            //     ? Column(
            //         children: [
            //           SizedBox(
            //             height: 20.h,
            //           ),
            //           Image.asset('assets/icons/emergency.png'),
            //           Padding(
            //             padding: const EdgeInsets.all(4.0),
            //             child: Text(
            //               'Active state of emergency',
            //               textAlign: TextAlign.center,
            //               style: Theme.of(context).textTheme.headline1!.copyWith(
            //                     color: const Color(0xffE72C37),
            //                     fontSize: 17.sp,
            //                   ),
            //             ),
            //           ),
            //           TextButton(
            //             onPressed: () {
            //               isEmergencyStarted.value = false;
            //               isTimerStarted.value = false;
            //               timerValue.value = 0;
            //             },
            //             child: const Text('End Emergency'),
            //           ),
            //         ],
            //       )
            //     :
            Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Emergency Help Needed?',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: const Color(0xffE72C37),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                'Press and hold for 3 seconds to activate emergency mode',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontSize: 17.sp,
                      color: const Color(0xFF252941),
                    ),
              ),
            ),
            SizedBox(
              width: 200.w,
              height: 200.h,
              child: Stack(
                children: [
                  Container(
                    width: 200.w,
                    height: 200.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(
                        0x55FF5963,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 160.w,
                      height: 160.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(
                          0x99FF5963,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 120.w,
                      height: 160.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFF5963),
                            Color(0xFFE72C37),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: isTimerStarted.value
                        ? Text(
                            timerValue.value.toString(),
                            style:
                                Theme.of(context).textTheme.headline1!.copyWith(
                                      color: AppConstant.appWhite,
                                      fontSize: 48.sp,
                                    ),
                          )
                        : Icon(
                            Icons.warning_rounded,
                            color: AppConstant.appWhite,
                            size: 60.sp,
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {},
          child: GestureDetector(
            onTapDown: (a) {
              startTime();
            },
            onTapUp: (a) {
              resetTime();
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFF5963),
                    Color(0xFFE72C37),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.warning_rounded),
                  Text('SOS'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
