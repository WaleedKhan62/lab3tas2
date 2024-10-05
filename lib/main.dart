import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
            children: [
              // LAB #3 Text
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'LAB # 3',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              Container(
                width: double.infinity,
                color: Colors.red, // Red background
                padding: const EdgeInsets.symmetric(
                  vertical: 40.0, // Padding on top and bottom
                  horizontal: 100.0, // Padding on left and right
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 10), // Blue border
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Inner border radius
                    child: Image.asset(
                      '../assets/download.jpeg', // Replace with your image
                      fit: BoxFit.cover,
                      width: 150,
                      height: 100,
                    ),
                  ),
                ),
              ),

              Stack(
                children: [
                  Container(
                    height: 400,
                  ),

                  Positioned(
                    left: 40,
                    top: 30,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          width: 1.0, // Border width
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 20,
                    
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          width: 1.0, // Border width
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 180,
                    top: 70,
                    
                    child: Container(
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          width: 1.0, // Border width
                        ),
                      ),
                      child: Column(
                        children: List.generate(9, (index) {
                      return Text(
                          '${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                      );
                    }),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 20.0
                ), // Optional padding
                child: Text(
                  'PRACTICE MORE THAN THIS. IT WILL HELP YOU TO DESIGN COMPLEX MOBILE APP DESIGN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16, // Adjust size as needed
                    fontWeight: FontWeight.w500, // Semi-bold text
                    color: Colors.grey[800], // Optional color change to grey
                  ),
                ),
              ),

            Container(
            color: Colors.green, // Green background for the row
            padding: const EdgeInsets.all(20), // Optional padding
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly spaced along the main axis
              crossAxisAlignment: CrossAxisAlignment.center, // Centered along the cross axis
              children: [
                // First Text Widget
                Text(
                  'LEADING',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // White text color for contrast
                  ),
                ),
                
                // Circular Image
                CircleAvatar(
                  radius: 30, // Image radius
                  backgroundImage: AssetImage(
                    '../assets/download.jpeg', // Replace with your image URL
                  ),
                ),
                
                // Second Text Widget
                Text(
                  'TRAILING',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // White text color for contrast
                  ),
                ),
              ],
            ),
          ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
