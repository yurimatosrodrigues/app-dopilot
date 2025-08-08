import 'package:dopilot/screen/home/widget/home_app_bar.dart';
import 'package:dopilot/screen/home/widget/home_bottom_navigation_bar.dart';
import 'package:dopilot/screen/notification/notifications_screen.dart';
import 'package:dopilot/screen/statistic/statistics_screen.dart';
import 'package:dopilot/screen/task/home_task_screen.dart';
import 'package:dopilot/widgets/app_floating_action_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentBottomNavIndex = 0;

  final List<Widget> _screens = [
    HomeTaskScreen(),
    StatisticsScreen(),
    NotificationsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: HomeAppBar(),
      body: SafeArea(child: _screens[_currentBottomNavIndex]),
      bottomNavigationBar: HomeBottomNavigationBar(
        currentIndex: _currentBottomNavIndex,
        onTap: _onBottomNavTap,
      ),
      floatingActionButton:
          _currentBottomNavIndex != 0
              ? null
              : AppFloatingActionButton(
                onPressed: () {
                  // Action for the floating action button
                },
              ),
    );
  }

  void _onBottomNavTap(int index) {
    setState(() {
      _currentBottomNavIndex = index;
    });
  }
}
