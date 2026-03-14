import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/features/onboarding/presentation/views/widgets/dot_indecator.dart';
import 'package:to_do_app/features/onboarding/presentation/views/widgets/manager/cubits/onboarding/onboarding_cubit.dart';
import 'package:to_do_app/features/onboarding/presentation/views/widgets/manager/cubits/onboarding/onboarding_states.dart';

class DotIndecatorSection extends StatelessWidget {
  const DotIndecatorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingStates>(
      builder: (BuildContext context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: List.generate(3, (i) {
            int currentPageIndex = context
                .read<OnboardingCubit>()
                .currentPageIndex;
            return DotIndecator(isCurrentPage: i == currentPageIndex);
          }),
        );
      },
    );
  }
}
