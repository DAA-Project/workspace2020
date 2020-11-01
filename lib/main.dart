import 'package:flutter/material.dart';
import 'package:workspace/provider/tProfiles.dart';
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
    return ChangeNotifierProvider.value(
      value: TProfiles(),
      //create: (ctx) => TProfiles(),

          child: MaterialApp(
        title: 'WORKSPACE',
        theme: ThemeData(
          
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Roboto',
        ),
        home: LoginScreen(),
        routes: {
          TutorInfoScreen.routeName: (ctx) => TutorInfoScreen(),
        }
      ),
    );
  }
}