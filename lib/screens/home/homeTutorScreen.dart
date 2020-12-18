import 'package:flutter/material.dart';
import '../../widgets/homeTutorDrawer.dart';

class HomeTutorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('WORKSPACE'),
          backgroundColor: Colors.cyan,
          elevation: 10,
          shadowColor: Colors.cyan),
      //drawer: HomeTutorDrawer(),
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
    );
  }
}
