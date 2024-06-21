import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset('assets/chef_front.png', height: 150)
                  .animate()
                  .slide(begin: Offset(0, -1), duration: 200.ms)
                  .shake(duration: 1.seconds),
              SizedBox(height: 20),
              // Welcome text
              Text(
                'Welcome back!',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ).animate().slide(begin: Offset(-1, 0), duration: 200.ms),
              SizedBox(height: 10),
              // Sign in text
              Text(
                'Sign in to continue',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 16,
                ),
              ).animate().slide(begin: Offset(1, 0), duration: 200.ms),
              SizedBox(height: 20),
              // Email TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.white38,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ).animate().slide(begin: Offset(-1, 0), duration: 200.ms),
              SizedBox(height: 20),
              // Password TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Colors.white)),
                  filled: true,
                  fillColor: Colors.white38,
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ).animate().slide(begin: Offset(1, 0), duration: 200.ms),
              SizedBox(height: 20),
              // Sign in button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[300],
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  elevation: 0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.arrow_forward),
                ),
              ).animate().fadeIn(duration: 1000.ms),
              SizedBox(height: 20),
              // Register text
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Not a member?')
                      .animate()
                      .slide(begin: Offset(-1, 0), duration: 200.ms),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register now',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ).animate().slide(begin: Offset(1, 0), duration: 200.ms),
                ],
              ),
              SizedBox(height: 25),
              // Spacer(),
              // Powered by text
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 38),
                        Text(
                          'Powered by CodingChef',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        )
                            .animate()
                            .slide(begin: Offset(1, 0), duration: 300.ms),
                      ],
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset('assets/chef_back.png', height: 60)
                          .animate()
                          .shimmer(duration: 1.seconds),
                    ).animate().slide(begin: Offset(1, 0), duration: 200.ms),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
