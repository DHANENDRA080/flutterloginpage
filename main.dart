// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Image.asset('logo.JPG'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'enter valid email as abc@gmail.com',
                ),
                style: TextStyle(color: Colors.red),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'enter valid password'),
                style: TextStyle(
                    color: Colors.red, fontSize: 16.0), // Adjust as needed
                obscureText: true, // Use this to hide password input
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 100, // Adjust as needed for your design
                height: 50, // Adjust as needed for your design
                child: ElevatedButton(
                  onPressed: () {
                    // Add your login logic here
                    print('Login button pressed');
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: Text('Login'),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Add your "Forgot Password" logic here
                print('Forgot Password pressed');
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontFamily: '30',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
