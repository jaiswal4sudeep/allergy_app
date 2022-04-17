import 'package:allergy_app/core/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BlockedAccountPage extends HookWidget {
  const BlockedAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isBlocked = useState<bool>(true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blocked accounts'),
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
      body: ListView.builder(
        itemCount: 20,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            title: const Text('Rohan Sakorey'),
            subtitle: const Text('user_name'),
            leading: const CircleAvatar(
              child: Text(
                'RS',
              ),
            ),
            trailing: Container(
              decoration: const ShapeDecoration(
                shape: StadiumBorder(
                  side: BorderSide(
                    color: AppConstant.primaryColor,
                  ),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  isBlocked.value = !isBlocked.value;
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    isBlocked.value ? 'Unblock' : 'Block',
                    style: const TextStyle(
                      color: AppConstant.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
