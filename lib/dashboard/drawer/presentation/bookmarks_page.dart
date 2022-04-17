import 'package:flutter/material.dart';

class BookmarksPage extends StatelessWidget {
  const BookmarksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarks'),
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
    );
  }
}
