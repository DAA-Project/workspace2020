import 'package:flutter/material.dart';
import 'lib/screens/tutorScreen.dart';


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
            
          ),
    );
  }
}