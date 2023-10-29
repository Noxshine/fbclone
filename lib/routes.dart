

import 'package:anti_fb/ui/homepage/home_screen.dart';
import 'package:anti_fb/ui/homepage/homepage/create_post_screen.dart';
import 'package:anti_fb/ui/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:anti_fb/ui/login/login_screen.dart';

// Define your named routes
final Map<String, WidgetBuilder> routes = {
  '/login': (context) => const LoginScreen(),
  '/signup': (context) => const SignupScreen(),

  '/home' : (context) => const HomeScreen(),
  '/post' : (context) => const PostScreen(),

  // '/profile': (context) => ProfileScreen(),
  // '/friends': (context) => FriendsScreen(),
  // '/messages': (context) => MessagesScreen(),
};

// Optionally, you can define a default route to handle unknown routes
const String initialRoute = '/login';