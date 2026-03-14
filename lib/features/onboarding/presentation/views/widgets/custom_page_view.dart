import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:to_do_app/features/onboarding/presentation/views/widgets/manager/cubits/onboarding/onboarding_cubit.dart';
import 'package:to_do_app/features/onboarding/presentation/views/widgets/page_view_body.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  List<OnboardingModel> onboardingData = [
    OnboardingModel(
      title: 'Manage your tasks',
      description:
          'You can easily manage all of your daily tasks in DoMe for free.',
      imagePath: 'assets/images/onboarding1.png',
    ),
    OnboardingModel(
      title: 'Create daily routines',
      description:
          'In Uptodo  you can create your personalized routine to stay productive',
      imagePath: 'assets/images/onboarding2.png',
    ),
    OnboardingModel(
      title: 'Create daily routine',
      description:
          'You can organize your daily tasks by adding your tasks into separate categories',
      imagePath: 'assets/images/onboarding3.png',
    ),
  ];
  @override
  void initState() {
    super.initState();
    context.read<OnboardingCubit>().pageController = PageController();
  }

  @override
  void dispose() {
    context.read<OnboardingCubit>().pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: context.read<OnboardingCubit>().pageController,
      physics: NeverScrollableScrollPhysics(),
      itemCount: onboardingData.length,
      itemBuilder: (context, index) => PageViewBody(
        onboardingModel: onboardingData[index],
        currentPage: index,
      ),
    );
  }
}
