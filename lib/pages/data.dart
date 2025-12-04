import 'package:flutter/material.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key, required this.title});
  final String title;

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}



class _MyDataPageState extends State<MyDataPage> with TickerProviderStateMixin {
  int currentPageIndex = 1;
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(z
      appBar: AppBar(
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'Graph'),
            Tab(text: 'Table'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(child: 
            Column(children: [
              Text('Graph')
            ],)
          ),
          Center(child: 
            Column(children: [
              Text('Table')
            ],)),
        ],
      ),
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
      )
    );
  }
}
