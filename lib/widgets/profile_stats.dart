import 'package:flutter/material.dart';

class ProfileStats extends StatelessWidget {
  final String count;
  final String data;
  const ProfileStats({
    Key? key,
    required this.count,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count,
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          data,
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
