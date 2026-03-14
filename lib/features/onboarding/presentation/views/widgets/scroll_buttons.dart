import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/core/constants.dart';
import 'package:to_do_app/core/services/prefs_service.dart';
import 'package:to_do_app/core/widgets/custom_elevated_button.dart';
import 'package:to_do_app/core/widgets/custom_text_button.dart';
import 'package:to_do_app/features/onboarding/presentation/views/welcome_view.dart';
import 'package:to_do_app/features/onboarding/presentation/views/widgets/manager/cubits/onboarding/onboarding_cubit.dart';
import 'package:to_do_app/features/onboarding/presentation/views/widgets/manager/cubits/onboarding/onboarding_states.dart';

class ScrollButtons extends StatelessWidget {
  const ScrollButtons({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<OnboardingCubit>();
    return BlocBuilder<OnboardingCubit, OnboardingStates>(
      builder: (BuildContext context, OnboardingStates state) {
        int currentPageIndex = cubit.currentPageIndex;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextButton(
                title: 'SKIP',
                onPressed: () {
                  PrefsService.setBool(key: AppConstants.isFirstTimekey, value: false);
                  Navigator.pushNamed(context, WelcomeView.routeName);
                },
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (currentPageIndex > 0)
                      CustomTextButton(
                        title: 'BACK',
                        onPressed: () {
                          if (currentPageIndex > 0) {
                            cubit.changePage(currentPageIndex - 1);
                          }
                        },
                      ),
                    if (currentPageIndex == 0) Spacer(),
                    CustomElevatedButton(
                      title: currentPageIndex == 2 ? 'GET STARTED' : 'NEXT',
                      onPressed: () {
                        if (currentPageIndex < 2) {
                          cubit.changePage(++currentPageIndex);
                        } else {
                          PrefsService.setBool(key: AppConstants.isFirstTimekey, value: false);
                          Navigator.pushNamed(context, WelcomeView.routeName);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
