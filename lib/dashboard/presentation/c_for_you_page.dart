import 'package:allergy_app/core/app_constant.dart';
import 'package:allergy_app/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ForYouPage extends HookWidget {
  const ForYouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabBarController = useTabController(initialLength: 2);
    final isSelected = useState<int>(0);
    return Scaffold(
      body: Column(
        children: [
          DefaultTabController(
            length: 2,
            child: TabBar(
              controller: tabBarController,
              onTap: (val) {
                isSelected.value = val;
              },
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 3.0,
                  color: AppConstant.primaryColor,
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    'For you',
                    style: TextStyle(
                      color: isSelected.value == 0
                          ? AppConstant.primaryColor
                          : AppConstant.subtitle1color,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Top 10',
                    style: TextStyle(
                      color: isSelected.value == 1
                          ? AppConstant.primaryColor
                          : AppConstant.subtitle1color,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const CustomDivider(),
          Expanded(
            child: TabBarView(
              controller: tabBarController,
              children: const [
                SizedBox(
                  height: 1000,
                  child: Center(
                    child: Text('1'),
                  ),
                ),
                Center(
                  child: Text('2'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
