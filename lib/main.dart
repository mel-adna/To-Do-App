import 'package:flutter/material.dart';
import 'package:to_do_app/features/auth/presentation/views/login_view.dart';
import 'package:to_do_app/features/splash/presentation/views/splash_views.dart';

void main() {
  runApp(const ToDoList());
}

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff121212),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}