import 'package:flutter/material.dart';
import 'package:to_do_app/features/auth/presentation/views/widgets/singup_view_body.dart';

class SingupView extends StatelessWidget {
  const SingupView({super.key});
  static const String routeName = '/signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SingupViewBody()));
  }
}
