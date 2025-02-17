import 'package:flutter/material.dart';
import 'package:multiple_files/login/login_5.dart';

class Login4 extends StatefulWidget {
  const Login4({Key? key}) : super(key: key);

  @override
  _Login4State createState() => _Login4State();
}

class _Login4State extends State<Login4> {
  final TextEditingController codeController = TextEditingController();
  final FocusNode focusNode = FocusNode();  // FocusNode to control the focus
  final String correctCode = "1234"; // Replace this with the actual verification code you want to check

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
        ),
        title: const Text(
          'Verification Code',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Push content to top and bottom
        children: [
          // Top section: Logo and text
          Expanded(  // Use Expanded to center content vertically
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,  // Center the logo and text vertically
                children: const [
                  Image(
                    image: AssetImage('Assets/Colorful Abstract Online Shop Free Logo 1.png'), // Replace with your logo path
                    width: 120,
                  ),
                  Text(
                    "FRADEL & SPIES",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Unbox Joy. Unleash Style",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bottom section: Verification Code container
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: Column(
              children: [
                const Text(
                  "Verification Code",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "You need to enter the 4-digit code we sent to your phone number.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: codeController,
                  focusNode: focusNode,  // Adding the focus node to the TextField
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white),
                  maxLength: 4,  // Restrict input to 4 digits
                  decoration: InputDecoration(
                    hintText: 'Enter 4-digit code',
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[900],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Check if the entered code matches the correct code
                    if (codeController.text == correctCode) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login5()),
                      );
                    } else {
                      // Show an error if the code is incorrect
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Incorrect verification code'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Confirm",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
