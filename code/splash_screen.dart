import 'package:flutter/material.dart';
import 'home_screen.dart'; // Replace with your main screen file

import 'package:flutter/material.dart';


//import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller and define the animation
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: Offset(-1.5, 0.0), // Start position (off-screen to the left)
      end: Offset(0.0, 0.0), // End position (center)
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward(); // Start the animation
    _navigateToHome();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {}); // Delay before navigation
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()), // Replace with your main screen widget
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color related to agriculture
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: Image.asset(
            'Assets/krishi.png', // Replace with your image path
            width: 800, // Adjust the size as needed
            height: 800,
          ),
        ),
      ),
    );
  }
}
