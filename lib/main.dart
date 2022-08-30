import 'package:flutter/material.dart';
import 'package:flutter_application_1/register_page.dart';
import 'package:flutter_application_1/sig_in_page.dart';

import 'confirmation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SigInPage(),
    );
  }
}
