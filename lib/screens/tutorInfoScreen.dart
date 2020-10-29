import 'package:flutter/material.dart';

class TutorInfoScreen extends StatelessWidget {

  static const routeName = '/tutor-detail';


  @override
  Widget build(BuildContext context) {
    final tutorId = ModalRoute.of(context).settings.arguments as String;// is the id!
    // ...
    return Scaffold(
      appBar: AppBar(),
      
    );
  }
}