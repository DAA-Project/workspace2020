import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './tutorinfoWidget.dart';
import '../provider/tProfiles.dart';
class TutorGrid extends StatelessWidget {
  final bool showSaved;
  TutorGrid(this.showSaved);
  @override
  Widget build(BuildContext context) {
    final tutorData= Provider.of<TProfiles>(context);
    final tutor= showSaved ? tutorData.savedTutors : tutorData.profiles;
    return GridView.builder(
      
        padding: EdgeInsets.all(10.0),
        itemCount: tutor.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          //create: (c) => tutor[i],
          value: tutor[i],
           
          child: TutorInfo(
          // tutor[i].image,
          // tutor[i].regNo,
          // tutor[i].name,
          // tutor[i].topic
          ),
          ),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
      ),
    );
  }
}
