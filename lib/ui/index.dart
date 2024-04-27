import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:great_escape/ui/connect.dart';
import 'package:great_escape/ui/home.dart';
import 'package:great_escape/ui/notifications.dart';
import 'package:great_escape/ui/profile.dart';

import '../theme/colors.dart';

class Index extends StatefulWidget {
  static const String id = '/index';

  final int? currentIndex;

  const Index({Key? key, this.currentIndex = 0}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  /// Current index of the bottom navigation
  late int currentIndex = widget.currentIndex!;

  /// Navigating classes for the bottom navigation
  final List<Widget> _children = [
    const Home(),
    const Connect(),
    const Notifications(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: white,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Montaga',
          fontSize: 10,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.01,
        ),
        unselectedLabelStyle: const TextStyle(
            fontFamily: 'Montaga',
            fontSize: 10,
            fontWeight: FontWeight.normal,
            letterSpacing: 0.01),
        selectedItemColor: black100,
        unselectedItemColor: grey100,
        onTap: _onTabTapped,
        items: [
          _bottomNav('home', 'Home'),
          _bottomNav('emergency', 'Connect'),
          _bottomNav('notification', 'Notifications'),
          _bottomNav('profile', 'Profile'),
        ],
      ),
    );
  }

  /// Navigating to other bottom tabs
  void _onTabTapped(int index) {
    HapticFeedback.lightImpact();
    if (!mounted) return;
    setState(() => currentIndex = index);
  }

  /// This function builds and returns a [BottomNavigationBarItem]
  /// with custom image [image] and label [name]
  BottomNavigationBarItem _bottomNav(String image, String name) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 7.0),
        child: Image.asset(
          'assets/images/$image.png',
          width: 25,
          height: 25,
          fit: BoxFit.contain,
          color: grey100,
        ),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 7.0),
        child: Image.asset(
          'assets/images/$image.png',
          width: 25,
          height: 25,
          fit: BoxFit.contain,
          color: black100,
        ),
      ),
      label: name,
    );
  }
}
