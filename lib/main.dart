import 'package:flutter/material.dart';
import 'package:workspace/provider/tProfiles.dart';
import './prvider_mi/fProfiles.dart';
import 'package:workspace/screens/signup/signUpOptionScreen.dart';
import 'package:workspace/widgets/user_tProfile.dart';
import 'screens/logInScreen.dart';
import 'screens/tutor/tutorScreen.dart';
import './screens/user_tutorScreen.dart';
import './screens/home/homeScreen.dart';
import './screens/tutor/tutorinfoScreen.dart';
import 'package:provider/provider.dart';
import 'screens/mockInterview/miInfoScreen.dart';
import 'screens/mockInterview/miScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
          providers:[
             ChangeNotifierProvider.value(
             value: TProfiles()),
             ChangeNotifierProvider.value(
             value: FProfiles()),
        ],
        //create: (ctx) => TProfiles(),

            child: MaterialApp(
          title: 'WORKSPACE',
          theme: ThemeData(
             
              fontFamily: 'Lato',
            ),
          home: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back.jpg"),
              fit: BoxFit.cover,
            ),
          ),child: LoginScreen()),
          routes: {
            TutorInfoScreen.routeName: (ctx) => TutorInfoScreen(),
            TutorScreen.routeName: (ctx) => TutorScreen(),
            UserTutorScreen.routeName: (ctx) => UserTutorScreen(),
            MIInfoScreen.routeName: (ctx) => MIInfoScreen(),
            MIScreen.routeName: (ctx) => MIScreen(),
          }
        ),
      
    );
  }
}