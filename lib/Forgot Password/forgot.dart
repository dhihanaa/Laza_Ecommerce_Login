import 'package:flutter/material.dart';
import 'package:laza/Forgot%20Password/verification.dart';
import 'package:laza/Login/login.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Inter',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Image.asset(
                      'assets/images/forgot.png',
                      width: 600,
                      height: 200,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter',
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 3),
                    TextFormField(
                      decoration: InputDecoration(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 165),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 60, right: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade500,
                      fontFamily: 'Inter',
                    ),
                    children: [
                      TextSpan(
                        text:
                            'Please write your email to receive a \n\ confirmation code to set a new password.',
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerificationCode()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(395, 75),
                  backgroundColor: Colors.purple.shade300,
                ),
                child: Text(
                  'Confirm Mail',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
