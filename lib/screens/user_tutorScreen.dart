import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/tProfiles.dart';
import '../widgets/user_tProfile.dart';

class UserTutorScreen extends StatelessWidget {
  static const routeName = '/UserTutor';
  @override
  Widget build(BuildContext context) {
    final tutorData = Provider.of<TProfiles>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Tutor')
        
      ),
      body: Padding(padding: EdgeInsets.all(8),
      child: ListView.builder(
        itemCount: tutorData.profiles.length,
        itemBuilder: (_,i) => UserTProfile(
          tutorData.profiles[i].name,
          tutorData.profiles[i].image)),
      ),
    );
  }
}