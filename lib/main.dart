import 'package:flutter/material.dart';
import 'package:pilar/pagecontrol.dart';

import 'constants.dart';

// void setupLocator() {
//   GetIt.I.registerSingleton(() => ListService());
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: kThemeData,
      debugShowCheckedModeBanner: false,
      home: PageControl(),
    );
  }
}
