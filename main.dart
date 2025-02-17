import 'package:flutter/material.dart';
import 'package:multiple_files/spash/spash_1.dart';

// Import splash screens
import 'spash/spash_2.dart';
import 'spash/spash_3.dart';
import 'spash/spash_4.dart';

// Import login screens
import 'login/login_1.dart';
import 'login/login_2.dart';
import 'login/login_3.dart';
import 'login/login_4.dart';
import 'login/login_5.dart';
import 'login/login_6.dart';

// Import home screens
import 'home/home_1.dart';
import 'home/home_2.dart';
import 'home/home_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Navigator',
      home: Spash1(), // Default screen
      routes: {
        // Splash Screens
        '/splash1': (context) => Spash1(),
        '/splash2': (context) => Spash2(),
        '/splash3': (context) => Spash3(),
        '/splash4': (context) => Spash4(),

       
      },
    );
  }
}
