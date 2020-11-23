import 'package:flutter/material.dart';
import 'homeStudentScreen.dart';
import 'homeTutorScreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  var _kTabPages = <Widget>[
    HomeStudentScreen(),
    HomeTutorScreen()
    
    
  ];
  static const _kTabs = <Tab>[
    Tab(icon: Icon(Icons.account_circle), text: 'Student'),
    Tab(icon: Icon(Icons.class_), text: 'Tutor'),
   
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _kTabPages.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: _kTabPages,
      ),
      bottomNavigationBar: Material(
        color: Colors.cyan[700].withOpacity(.8),
        child: TabBar(
          tabs: _kTabs,
          controller: _tabController,
        ),
      ),
    );
  }
}