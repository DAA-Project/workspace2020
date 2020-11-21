import 'package:flutter/material.dart';
import 'package:workspace/widgets/user_tProfile.dart';
import '../screens/tutor/tutorScreen.dart';
import '../screens/user_tutorScreen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 238, 238, 238),
            boxShadow: [
            BoxShadow(offset: Offset(10,10),color:Color.fromARGB(80, 0, 0, 0),blurRadius: 10),
            BoxShadow(offset: Offset(10,10),color:Color.fromARGB(150 , 255, 255, 255),blurRadius: 10),]),
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('hello'),
              backgroundColor: Colors.cyan,
              automaticallyImplyLeading: false,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Tutor'),
              onTap:() {Navigator.of(context).pushReplacementNamed("/tutorScreen");},
            ),
             Divider(),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Switch to Tutor'),
              onTap:() {Navigator.of(context).pushReplacementNamed(UserTutorScreen.routeName);},
            ),
          ]
        ),
      ),
    );
  }
}