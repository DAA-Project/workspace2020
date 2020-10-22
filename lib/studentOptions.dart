import 'package:flutter/material.dart';
import './screens/tutorScreen.dart';


class StudentOptions extends StatelessWidget {
  final String title;
  final Color color;

  StudentOptions(this.title, this.color);

  void selectOption(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return TutorScreen();
    },),);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectOption(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Text(title,
            style: Theme.of(context).textTheme.title,),
            decoration: BoxDecoration(
              gradient: LinearGradient(
               colors: [color.withOpacity(0.7),color,],
               begin: Alignment.topLeft,
               end: Alignment.bottomRight,
             ),
             borderRadius: BorderRadius.circular(15),
              ),
          ),
    );
  }
}