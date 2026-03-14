import 'package:flutter/material.dart';
import 'package:to_do_app/core/constants.dart';
import 'package:to_do_app/core/services/prefs_service.dart';
import 'package:to_do_app/core/utils/app_routing.dart';
import 'package:to_do_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:to_do_app/features/onboarding/presentation/views/welcome_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefsService.init();
  runApp(const ToDoList());
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  bool isFirstTime = false;

  @override
  void initState() {
    super.initState();
    isFirstTime =
        PrefsService.getBool(key: AppConstants.isFirstTimekey) ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff121212),
      ),
      initialRoute: isFirstTime
          ? OnboardingView.routeName
          : WelcomeView.routeName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouting.generateRoute,
    );
  }
}
