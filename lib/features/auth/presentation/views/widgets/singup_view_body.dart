import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_text_stayles.dart';
import 'package:to_do_app/core/widgets/back_button.dart';
import 'package:to_do_app/core/widgets/custom_elevated_button.dart';
import 'package:to_do_app/core/widgets/custom_text_field.dart';
import 'package:to_do_app/features/auth/presentation/views/login_view.dart';

class SingupViewBody extends StatelessWidget {
  const SingupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(alignment: Alignment.topLeft, child: ButtonBack()),
            SizedBox(height: 16),
            Text('Register', style: AppTextStyles.lato32Bold),
            SizedBox(height: 23),
            Text('Username', style: AppTextStyles.lato16Regular),
            SizedBox(height: 6),
            CustomTextField(hintText: 'Enter your username'),
            SizedBox(height: 25),
            Text('Password', style: AppTextStyles.lato16Regular),
            CustomTextField(
              hintText: '● ● ● ● ● ● ●',
              isPassword: true,
              style: AppTextStyles.lato16Regular.copyWith(
                letterSpacing: 6,
                color: Color(0xff535353),
              ),
            ),
            SizedBox(height: 25),
            Text('Confirm Password', style: AppTextStyles.lato16Regular),
            CustomTextField(
              hintText: '● ● ● ● ● ● ●',
              isPassword: true,
              style: AppTextStyles.lato16Regular.copyWith(
                letterSpacing: 6,
                color: Color(0xff535353),
              ),
            ),
            SizedBox(height: 40),
            CustomElevatedButton(
              title: 'REGISTER',
              onPressed: () {},
              backgroundColor: null,
            ),
            SizedBox(height: 18),
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
            SizedBox(height: 24),
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
                  Text('Sign up with Google'),
                ],
              ),
            ),
            SizedBox(height: 17),
            CustomElevatedButton(
              backgroundColor: Colors.transparent,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/apple.png', width: 24, height: 24),
                  SizedBox(width: 10),
                  Text('Sign up with Apple'),
                ],
              ),
            ),
            SizedBox(height: 46),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: AppTextStyles.lato16Regular.copyWith(
                    color: Colors.white54,
                  ),
                ),
                SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginView.routeName);
                  },
                  child: Text(
                    'Login',
                    style: AppTextStyles.lato16Regular.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
