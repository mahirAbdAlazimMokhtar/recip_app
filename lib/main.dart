import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recip_app/provider/app_provider.dart';
import 'package:recip_app/screen/dashboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
        create: (context)=>AppProvider(), 
        child: DashboardScreen(),),
    );
  }
}
