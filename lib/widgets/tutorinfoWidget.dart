import 'package:flutter/material.dart';
import '../screens/tutorInfoScreen.dart';
import '../models/tutorProfile.dart';

class TutorInfo extends StatelessWidget {
final String image;
final String name;
final String topic;

TutorInfo(this.image,this.name,this.topic);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
              borderRadius: BorderRadius.circular(10),
          child: GridTile(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TutorInfoScreen()),);
              },
        child: Image.asset('assets/images/unknown.png',
        ),),
        footer: GridTileBar(
          
          backgroundColor: Colors.black54,
            leading: IconButton(
              icon: Icon(Icons.bookmark),
              color: Colors.white,
              onPressed: () {},
            ),
            title: Text(
              name,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.open_in_full,
              ),
              onPressed: () {},
              color: Colors.white,
            ),
          ),
      

      ),
    );
  }
}