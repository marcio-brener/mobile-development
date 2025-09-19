import 'package:flutter/material.dart';
import 'package:ride_buddy_flutter/screens/login_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Ride Buddy', home: LoginScreen());
  }
}
