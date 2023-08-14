import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:laza/Login/login.dart';
import 'package:laza/Sign%20In%20Sign%20Up/signin.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                        MaterialPageRoute(builder: (context) => Signin()),
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 100),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Inter',
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 3),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.check, color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Inter',
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 3),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixText: 'Strong',
                        suffixStyle: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Inter',
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 3),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.check, color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Remember me',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Inter',
                        color: Colors.grey,
                      ),
                    ),
                    Switch(
                      value: true,
                      onChanged: (value) {
                        // Aksi saat toggle button ditekan
                      },
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 150),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(395, 75),
                  backgroundColor: Colors.purple.shade300,
                ),
                child: Text(
                  'Sign Up',
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
