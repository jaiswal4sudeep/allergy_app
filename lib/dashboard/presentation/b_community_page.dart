import 'package:allergy_app/widgets/custom_submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: Image(
                  image: const AssetImage(
                    'assets/images/b_community_image/logo.png',
                  ),
                  width: 196.w,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ' Join Aller-G Family!',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              color: const Color(0xFF3F414E),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'We are a family across the planet. That support our gruop members on a daily base by connecting, meeting, sharing info and much more',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: const Color(0xFF666666),
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ),
                    CustomSubmitButton(
                      buttonTitle: 'GET STARTED',
                      callback: () {},
                      buttonWidth: 320.w,
                      buttonHeight: 50.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
