import 'package:flutter/material.dart';
import 'package:meal_monkey/view/onboarding/startup_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Monkey',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Metropolis",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: const StartupView(),
    );
  }
}
