import 'package:flutter/material.dart';
import 'package:bottom_bar_left_side/ui/first_screen.dart';
import 'package:bottom_bar_left_side/ui/five_screen.dart';
import 'package:bottom_bar_left_side/ui/fourth_screen.dart';
import 'package:bottom_bar_left_side/ui/second_screen.dart';
import 'package:bottom_bar_left_side/ui/third_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen(),
    const ForthScreen(),
    const FiveScreen(),
    // Add more screens as needed
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.business,
    Icons.account_circle,
    Icons.favorite,
    Icons.settings,
    // Add more icons as needed
  ];

  final List _lable = [
    'home',
    'business',
    'account',
    'favorite',
    'setting',
    // Add more icons as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              for (int i = 0; i < _screens.length; i++)
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = i;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 121,
                    color: _currentIndex == i ? Colors.blue : Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          _icons[i],
                          color: _currentIndex == i ? Colors.black : Colors.grey,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          _lable[i],
                          style: TextStyle(
                            color: _currentIndex == i ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          // Content area
          Expanded(
            child: _screens[_currentIndex],
          ),
        ],
      ),
    );
  }
}
