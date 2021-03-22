import 'package:flutter/material.dart';
import 'package:nubank/screens/SplashScreen.dart';
import 'package:nubank/utils/HeaderController.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<HeaderController>(
        create: (_) => HeaderController(),
        child: MyApp(),
    ),
      //MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "HomepageBaukasten",
        primaryColor: Color(0xff8A05BE),
        accentColor: Color(0xff9824C7),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}