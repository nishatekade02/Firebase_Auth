import 'package:flutter/material.dart';
import 'home_3.dart'; 

class ProductDetails extends StatefulWidget {
  final String image;
  final String price;
  final String title;

  ProductDetails({
    required this.image,
    required this.price,
    required this.title,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String selectedSize = "M"; // Default selected size
  Color selectedColor = Colors.pink; // Default selected color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.grid_view, color: Colors.orange),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('Assets/Ellipse 438.png'),
              radius: 18,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.image,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            // Product Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.price,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Size Options
            Text(
              "Size",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizeOption(label: "S", isSelected: selectedSize == "S", onTap: () {
                  setState(() {
                    selectedSize = "S";
                  });
                }),
                SizeOption(label: "M", isSelected: selectedSize == "M", onTap: () {
                  setState(() {
                    selectedSize = "M";
                  });
                }),
                SizeOption(label: "L", isSelected: selectedSize == "L", onTap: () {
                  setState(() {
                    selectedSize = "L";
                  });
                }),
                SizeOption(label: "XL", isSelected: selectedSize == "XL", onTap: () {
                  setState(() {
                    selectedSize = "XL";
                  });
                }),
              ],
            ),
            SizedBox(height: 20),
            // Color Options
            Text(
              "Color",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ColorOption(color: Colors.grey, onTap: () {
                  setState(() {
                    selectedColor = Colors.grey;
                  });
                }),
                ColorOption(color: Colors.pink, onTap: () {
                  setState(() {
                    selectedColor = Colors.pink;
                  });
                }),
                ColorOption(color: Colors.brown, onTap: () {
                  setState(() {
                    selectedColor = Colors.brown;
                  });
                }),
                ColorOption(color: Colors.green, onTap: () {
                  setState(() {
                    selectedColor = Colors.green;
                  });
                }),
                ColorOption(color: Colors.blue, onTap: () {
                  setState(() {
                    selectedColor = Colors.blue;
                  });
                }),
              ],
            ),
            Spacer(),
            // Add to Cart Button
            ElevatedButton(
              onPressed: () {
                // Navigate to home_3.dart with the selected size and color
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home3(
                    
                    ),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Added to Cart!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                "Add To Cart",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// Size Option Widget
class SizeOption extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  SizeOption({required this.label, this.isSelected = false, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 12),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Colors.grey[900],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// Color Option Widget
class ColorOption extends StatelessWidget {
  final Color color;
  final VoidCallback onTap;

  ColorOption({required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 12),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
