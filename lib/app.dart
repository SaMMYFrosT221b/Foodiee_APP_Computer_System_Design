import 'package:flutter/material.dart';
import 'package:foodiee/utlis/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const Scaffold(
        body: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}
