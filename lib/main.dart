import 'package:flutter/material.dart';
import 'package:workspace/provider/tutor.dart';
import 'screens/logInScreen.dart';


//import 'screens/homeScreen.dart';
import './screens/tutorinfoScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => TProfiles(),

          child: MaterialApp(
        title: 'WORKSPACE',
        theme: ThemeData(
          
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Roboto',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              )),
        ),
        home: LoginScreen(),
        routes: {
          TutorInfoScreen.routeName: (ctx) => TutorInfoScreen(),
        }
      ),
    );
  }
}