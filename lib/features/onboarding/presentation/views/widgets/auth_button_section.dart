import 'package:flutter/material.dart';
import 'package:to_do_app/core/widgets/custom_elevated_button.dart';
import 'package:to_do_app/features/auth/presentation/views/login_view.dart';

class AuthButtonSection extends StatelessWidget {
  const AuthButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [
          CustomElevatedButton(
            title: 'LOGIN',
            onPressed: () {
              Navigator.pushNamed(context, LoginView.routeName);
            },
            backgroundColor: null,
          ),
          CustomElevatedButton(
            title: 'CREATE ACCOUNT',
            backgroundColor: Colors.transparent,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
