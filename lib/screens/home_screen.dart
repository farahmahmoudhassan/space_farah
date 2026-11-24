
import 'package:flutter/material.dart';
import 'planet_details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int index = 0;

  final List<Map<String, String>> planets = [

    {
      'name': 'Earth',
      'image': 'assets/images/earth.png',
      'description': 'Our home planet.',
    },

    {
      'name': 'Mercury',
      'image': 'assets/images/mercury.png',
      'description': 'The smallest planet.',
    },

    {
      'name': 'Venus',
      'image': 'assets/images/venus.png',
      'description': 'The hottest planet.',
    },

    {
      'name': 'Mars',
      'image': 'assets/images/mars.png',
      'description': 'The Red Planet.',
    },

    {
      'name': 'Jupiter',
      'image': 'assets/images/jupiter.png',
      'description': 'The largest planet.',
    },

    {
      'name': 'Saturn',
      'image': 'assets/images/saturn.png',
      'description': 'The Ringed Planet.',
    },

    {
      'name': 'Uranus',
      'image': 'assets/images/uranus 1.png',
      'description': 'The Ice Giant.',
    },

    {
      'name': 'Neptune',
      'image': 'assets/images/neptune.png',
      'description': 'The Blue Planet.',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Column(
          children: [

            SizedBox(height: 25),

            Text(
              'Explore',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),

            SizedBox(height: 45),

            Text(
              'Which planet would you\nlike to explore?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 25),

            Expanded(
              child: Image.asset(
                planets[index]['image']!,
                width: 260,
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
              children: [

                IconButton(
                  onPressed: () {
                    setState(() {
                      index--;

                      if (index < 0) {
                        index = planets.length - 1;
                      }
                    });
                  },

                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),

                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xffF44336),
                  ),
                ),

                Text(
                  planets[index]['name']!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      index++;

                      if (index >= planets.length) {
                        index = 0;
                      }
                    });
                  },

                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),

                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xffF44336),
                  ),
                ),

              ],
            ),

            SizedBox(height: 25),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
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
                        builder: (context) =>
                            PlanetDetailsScreen(
                              name: planets[index]['name']!,
                              image: planets[index]['image']!,
                              description:
                              planets[index]['description']!,
                            ),
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

            SizedBox(height: 25),

          ],
        ),
      ),
    );
  }
}
