import 'package:flutter/material.dart';
import 'package:workspace/provider/tProfiles.dart';
import 'screens/logInScreen.dart';


import 'screens/homeScreen.dart';
import './screens/tutorinfoScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: TProfiles(),
      //create: (ctx) => TProfiles(),

          child: MaterialApp(
        title: 'WORKSPACE',
        theme: ThemeData(
          
         
          fontFamily: 'Roboto',
        ),
        home: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),child: HomeScreen()),
        routes: {
          TutorInfoScreen.routeName: (ctx) => TutorInfoScreen(),
        }
      ),
    );
  }
}