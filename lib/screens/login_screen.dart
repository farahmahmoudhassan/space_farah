
import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [

            Expanded(
              child: Stack(
                children: [

                  Positioned(
                    right: -100,
                    top: 80,
                    child: Container(
                      width: 350,
                      height: 350,
                      child: Image.asset(
                        "assets/images/48e3ac1944450fcae09e68a9ccd37c17 1.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  Positioned(
                    left: 20,
                    top: 100,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [

                        Text(
                          'Explore',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),

                        Text(
                          'The Universe',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffF44336),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },

                  child: Text(
                    'Explore',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
