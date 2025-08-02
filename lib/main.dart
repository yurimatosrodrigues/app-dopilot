import 'package:dopilot/screen/auth/login_screen.dart';
import 'package:dopilot/screen/home/home_screen.dart';
import 'package:dopilot/screen/splash/splash_screen.dart';
import 'package:dopilot/screen/task/all_tasks_screen.dart';
import 'package:dopilot/screen/task/new_task_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/home",
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/new-task': (context) => const NewTaskScreen(),
        '/all-tasks': (context) => const AllTasksScreen(),
      },
    );
  }
}
