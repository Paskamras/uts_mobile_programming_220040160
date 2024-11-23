// lib/main.dart

import 'package:flutter/material.dart';
import 'screens/plant_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Tumbuhan',
      theme: ThemeData(primarySwatch: Colors.green),
      home: PlantListPage(),
    );
  }
}
