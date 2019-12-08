import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/loginscreen.dart';
import 'package:instagram_clone/screens/signupscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'instagram clone',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        LoginScreen.id :  (context)=>LoginScreen(),
        SignupScreen.id : (context)=>SignupScreen(),
        },
    );
  }
  
  }
