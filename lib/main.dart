import 'package:flutter/material.dart';
import 'package:sing_work/firstpage.dart';
import 'package:sing_work/resume.dart';
import 'package:sing_work/social_page.dart';

void main(List<String> args) {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResumeScreen(),
    );
  }
}
