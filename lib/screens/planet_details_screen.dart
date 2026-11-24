
import 'package:flutter/material.dart';

class PlanetDetailsScreen extends StatelessWidget {

  final String name;
  final String image;
  final String description;

  PlanetDetailsScreen({
    required this.name,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: EdgeInsets.all(15),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },

                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xffF44336),
                    size: 30,
                  ),
                ),
              ),

              Center(
                child: Image.asset(
                  image,
                  height: 250,
                  width: 250,
                  fit: BoxFit.contain,
                ),
              ),

              SizedBox(height: 25),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '$name: $description',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 30),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'About',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 12),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  description,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    height: 1.6,
                  ),
                ),
              ),

              SizedBox(height: 30),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [

                    planetInfo(
                      'Distance from Sun (km)',
                      '149,600,000',
                    ),

                    planetInfo(
                      'Length of Day (hours)',
                      '23.93',
                    ),

                    planetInfo(
                      'Orbital Period (Earth years)',
                      '1',
                    ),

                    planetInfo(
                      'Radius (km)',
                      '6371',
                    ),

                    planetInfo(
                      'Mass (kg)',
                      '5.972 × 10²⁴',
                    ),

                    planetInfo(
                      'Gravity (m/s²)',
                      '9.81',
                    ),

                    planetInfo(
                      'Surface Area (km²)',
                      '510 million',
                    ),

                  ],
                ),
              ),

              SizedBox(height: 30),

            ],
          ),
        ),
      ),
    );
  }

  Widget planetInfo(String title, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ),

          SizedBox(width: 10),

          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}
