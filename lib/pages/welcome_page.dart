import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              left: mediaQuery.size.width * 0.08,
              top: mediaQuery.size.height * 0.88,
              child: Container(
                width: mediaQuery.size.width * 0.09,
                height: mediaQuery.size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: Colors.blue,
                  //     blurRadius: 4,
                  //     offset: Offset(2, 8), // Shadow position
                  //   ),
                  // ],
                  color: Colors.blue[700],
                ),
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.16,
              top: mediaQuery.size.height * 0.92,
              child: Container(
                width: mediaQuery.size.width * 0.09,
                height: mediaQuery.size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: Color(0xFF00C9FF),
                  //     blurRadius: 4,
                  //     offset: Offset(0.6, 8), // Shadow position
                  //   ),
                  // ],
                  color: Colors.blue[700],
                ),
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.18,
              top: mediaQuery.size.height * 0.86,
              child: Container(
                width: mediaQuery.size.width * 0.09,
                height: mediaQuery.size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: Color(0xFF00C9FF),
                  //     blurRadius: 4,
                  //     offset: Offset(0.6, 8), // Shadow position
                  //   ),
                  // ],
                  color: Colors.blue[700],
                ),
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.86,
              top: mediaQuery.size.height * 0.09,
              child: Container(
                width: mediaQuery.size.width * 0.09,
                height: mediaQuery.size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: Colors.blue,
                  //     blurRadius: 4,
                  //     offset: Offset(2, 8), // Shadow position
                  //   ),
                  // ],
                  color: Colors.blue[700],
                ),
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.78,
              top: mediaQuery.size.height * 0.05,
              child: Container(
                width: mediaQuery.size.width * 0.09,
                height: mediaQuery.size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: Color(0xFF00C9FF),
                  //     blurRadius: 4,
                  //     offset: Offset(0.6, 8), // Shadow position
                  //   ),
                  // ],
                  color: Colors.blue[700],
                ),
              ),
            ),
            Positioned(
              left: mediaQuery.size.width * 0.76,
              top: mediaQuery.size.height * 0.11,
              child: Container(
                width: mediaQuery.size.width * 0.09,
                height: mediaQuery.size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     color: Color(0xFF00C9FF),
                  //     blurRadius: 4,
                  //     offset: Offset(0.6, 8), // Shadow position
                  //   ),
                  // ],
                  color: Colors.blue[700],
                ),
              ),
            ),
            const Center(
              child: Text('Welcome to quiz app',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            ),
            Positioned(
              top: mediaQuery.size.height * 0.97,
              left: mediaQuery.size.width * 0.50,
              child: const Text(
                'Version 1.0001',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
