import 'package:flutter/material.dart';
import 'package:google_translation_example/page/chat_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Google Translate';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: ChatPage(),
      );
}
