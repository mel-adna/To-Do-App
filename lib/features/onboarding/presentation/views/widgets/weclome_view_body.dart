import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_text_stayles.dart';
import 'package:to_do_app/core/widgets/back_button.dart';
import 'package:to_do_app/features/onboarding/presentation/views/widgets/auth_button_section.dart';

class WeclomeViewBody extends StatelessWidget {
  const WeclomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: Alignment.topLeft, child: ButtonBack()),
        SizedBox(height: 60),
        Text('Welcome to UpToDo', style: AppTextStyles.lato32Bold),
        SizedBox(height: 10),
        Text(
          'Please login to your account or create new account to continue',
          style: AppTextStyles.lato16Regular,
          textAlign: TextAlign.center,
        ),
        Spacer(),
        AuthButtonSection(),
        SizedBox(height: 50),
      ],
    );
  }
}
