import 'package:flutter/material.dart';
import 'package:multiple_files/spash/spash_2.dart';

class Spash1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('figma'),
      ),
      body: Center(
        child: Image.asset('Assets/Colorful Abstract Online Shop Free Logo 1.png'),
  
        ),

        floatingActionButton: SizedBox(
        width: 180, // Width of the block
        height: 50, // Height of the block
        child: FloatingActionButton.extended(
          backgroundColor: Colors.orange, // Orange background
          onPressed: () {
            // Navigate to splash2.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Spash2()),
            );
          },
          label: Text(
            "Let's Get Started", // Text on the button
            style: TextStyle(
              color: Colors.white, // White text
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
