import 'package:flutter/material.dart';
import 'login_4.dart';

class Login3 extends StatelessWidget {
  Login3({Key? key}) : super(key: key);

  final TextEditingController mobileController = TextEditingController();
  final FocusNode focusNode = FocusNode();  // FocusNode to control the focus

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
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

          // Bottom section: Reset Password container
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: Column(
              children: [
                const Text(
                  "Reset your Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "We need your Phone number so we can send you the password reset code.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: mobileController,
                  focusNode: focusNode,  // Adding the focus node to the TextField
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
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
                    // Validate phone number
                    if (mobileController.text.isNotEmpty && mobileController.text.length == 10) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login4()),
                      );
                    } else {
                      // Show a snackbar if the phone number is invalid
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Please enter a valid 10-digit phone number'),
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
                    "Sign Up",
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
