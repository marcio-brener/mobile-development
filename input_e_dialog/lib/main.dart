import 'package:flutter/material.dart';
import 'package:input_e_dialog/screens/fab_bottom_item.dart';
import 'package:input_e_dialog/screens/task_screen.dart';
import 'screens/form_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: FormScreen(),
      //home: FabBottomItem(),
      home: TaskScreen(),
    );
  }
}
