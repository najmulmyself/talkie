import 'package:flutter/material.dart';
import 'package:talkie/screens/talk_screen.dart';
import 'package:talkie/screens/user_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: TalkScreen(),
    );
  }
}
