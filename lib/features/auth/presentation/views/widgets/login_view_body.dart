import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_text_stayles.dart';
import 'package:to_do_app/core/widgets/back_button.dart';
import 'package:to_do_app/core/widgets/custom_elevated_button.dart';
import 'package:to_do_app/core/widgets/custom_text_field.dart';
import 'package:to_do_app/features/auth/presentation/views/singup_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(alignment: Alignment.topLeft, child: ButtonBack()),
            SizedBox(height: 40),
            Text('Login', style: AppTextStyles.lato32Bold),
            SizedBox(height: 50),
            Text('Username', style: AppTextStyles.lato16Regular),
            SizedBox(height: 6),
            CustomTextField(hintText: 'Enter your username'),
            SizedBox(height: 20),
            Text('Password', style: AppTextStyles.lato16Regular),
            SizedBox(height: 6),
            CustomTextField(
              hintText: '● ● ● ● ● ● ●',
              isPassword: true,
              style: AppTextStyles.lato16Regular.copyWith(
                letterSpacing: 6,
                color: Color(0xff535353),
              ),
            ),
            SizedBox(height: 70),
            CustomElevatedButton(
              title: 'LOGIN',
              onPressed: () {},
              backgroundColor: null,
            ),
            SizedBox(height: 30),
            Row(
              spacing: 10,
              children: [
                Expanded(child: Divider()),
                Text(
                  'OR',
                  style: AppTextStyles.lato16Regular.copyWith(
                    color: Colors.white54,
                  ),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 30),
            CustomElevatedButton(
              backgroundColor: Colors.transparent,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Login with Google',
                    style: AppTextStyles.lato16Regular.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomElevatedButton(
              backgroundColor: Colors.transparent,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/apple.png', width: 24, height: 24),
                  SizedBox(width: 10),
                  Text(
                    'Login with Apple',
                    style: AppTextStyles.lato16Regular.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: AppTextStyles.lato16Regular.copyWith(
                    color: Colors.white54,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SingupView.routeName);
                  },
                  child: Text(
                    'Register',
                    style: AppTextStyles.lato16Regular.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
