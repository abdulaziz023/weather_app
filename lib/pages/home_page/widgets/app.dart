import 'package:flutter/material.dart';

import '../home_Page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "inter"
      ),
      title: "Weather G8",
      home: HomePage(),
    );
  }
}
