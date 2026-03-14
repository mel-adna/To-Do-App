import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/features/onboarding/presentation/views/widgets/manager/cubits/onboarding/onboarding_states.dart';

class OnboardingCubit extends Cubit<OnboardingStates> {
  OnboardingCubit() : super(OnboardingInitial());
  int currentPageIndex = 0;
  late PageController pageController;
  void changePage(int index) {
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    currentPageIndex = index;
    emit(OnboardingSuccess());
  }
}
