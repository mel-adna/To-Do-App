import 'package:flutter/material.dart';
import 'package:to_do_app/features/auth/presentation/views/login_view.dart';

class SplashViews extends StatefulWidget {
  const SplashViews({super.key});

  @override
  State<SplashViews> createState() => _SplashViewsState();
}

class _SplashViewsState extends State<SplashViews> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('assets/images/app_logo.png'),
          Text('UpTodo', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
        ],),
      ),
    );
  }
}