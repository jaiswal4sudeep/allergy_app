import 'package:allergy_app/core/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllerGCardPage extends StatelessWidget {
  const AllerGCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aller-G card'),
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
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Image(
              image: AssetImage('assets/icons/aller_g_card.png'),
              fit: BoxFit.fitWidth,
              color: AppConstant.primaryColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // TODO reach text
          children: [
            Text(
              'I have severe food allergy. To avoid a life-threatening allergic reaction, I must avoid all foods that contains or may contains:',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: const Color(0xFF252941),
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/peanut.png',
                  ),
                  label: const Text('Peanut'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF7E9DFE),
                    shape: const StadiumBorder(),
                    textStyle: Theme.of(context).textTheme.headline3,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.sp,
                      vertical: 8.sp,
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/milk.png',
                  ),
                  label: const Text('Milk'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF7E9DFE),
                    shape: const StadiumBorder(),
                    textStyle: Theme.of(context).textTheme.headline3,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.sp,
                      vertical: 8.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'For my meal, can you please make sure that my food',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: const Color(0xFF252941),
                  ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'does not, or may contain these ingredients',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: const Color(0xFFE72C37),
                  ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'and that only clean / washed (hot soapy water) food preparations equipment and surfaces are used e.g.:',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: const Color(0xFF252941),
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '\u2022 Chopping Boards',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: const Color(0xFF252941),
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '\u2022 Knives & tongs',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: const Color(0xFF252941),
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '\u2022 Mixing Bowls',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: const Color(0xFF252941),
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '\u2022 Pans & saucepans',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: const Color(0xFF252941),
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '\u2022 Utensils',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: const Color(0xFF252941),
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '\u2022 Surfaces',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: const Color(0xFF252941),
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Thank you for your cooperation!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: const Color(0XFF0118B5),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
