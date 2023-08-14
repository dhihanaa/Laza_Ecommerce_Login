import 'package:flutter/material.dart';
import 'package:laza/Sign%20In%20Sign%20Up/signin.dart';

class LookPage extends StatelessWidget {
  const LookPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.purple[300],
            child: Image.asset(
              'assets/images/profile.png',
              height: 812,
              width: 400,
              // fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 450,
            left: 10,
            right: 10,
            bottom: 20,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Column(
                  children: [
                    Text(
                      'Look Good, Feel Good',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      textAlign: TextAlign.center,
                      'Create your individual & unique style and look amazing everyday.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade500,
                        fontFamily: 'Inter',
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(152, 60),
                            backgroundColor: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Men',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                        // SizedBox(width: 5),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Signin()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(152, 60),
                            backgroundColor: Colors.purple[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Women',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Skip',
                      style: TextStyle(
                        fontFamily: 'Iner',
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
