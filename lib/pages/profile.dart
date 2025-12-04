import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key, required this.title});
  final String title;

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}



class _MyProfilePageState extends State<MyProfilePage> {
  int currentPageIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Profile'),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: (value) {
          setState(() {
            currentPageIndex = value;
            Navigator.pushNamed(
              context,
                  value == 0
                  ? '/home'
                  : value == 1
                    ? '/data'
                    : value == 2
                      ? '/profile'
                      :'/home'
            );
          });
        },
        items: const [
         BottomNavigationBarItem(icon: Icon (Icons.home_rounded), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_rounded), label: 'Data'),
        BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: 'Profile')
      ]
      ),
    );
  }
}
