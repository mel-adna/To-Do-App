import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_text_stayles.dart';
import 'package:to_do_app/features/onboarding/data/models/onboarding_model.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({
    super.key,
    required this.onboardingModel,
    required this.currentPage,
  });
  final OnboardingModel onboardingModel;
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
          AspectRatio(
            aspectRatio: 1.5,
            child: Image.asset(onboardingModel.imagePath),
          ),
          SizedBox(height: 30),

          SizedBox(height: 30),
          Text(onboardingModel.title, style: AppTextStyles.lato32Bold),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              textAlign: TextAlign.center,
              onboardingModel.description,
              style: AppTextStyles.lato16Regular,
            ),
          ),
        ],
      ),
    );
  }
}
