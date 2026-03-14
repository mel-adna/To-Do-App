import 'package:flutter/material.dart';
import 'package:to_do_app/features/onboarding/presentation/views/widgets/weclome_view_body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  static const String routeName = 'welcome';
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: WeclomeViewBody()));
  }
}
