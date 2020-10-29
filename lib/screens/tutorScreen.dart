import 'package:flutter/material.dart';
import '../models/tutorProfile.dart';
import '../widgets/tutorinfoWidget.dart';

class TutorScreen extends StatelessWidget {
final List<TutorProfile> dummyData=[
  TutorProfile(
    name: 'Anita Sharma',
    topic: 'Data Structures',
    grade: 'B+',
    email: 'anita@gmail.com',
    phoneno: 9829635421,
    regNo: 189303177,
    currentyear: 2,
    yearofgrad: 2022,
    password: '123',
    image: 'assets/images/unknown.png'
  ),
  TutorProfile(
    name: 'Rakesh Patel',
    topic: 'Computer Architecture',
    grade: 'A',
    email: 'rakesh@hotmail.com',
    phoneno: 9158463258,
    regNo: 189303166,
    currentyear: 2,
    yearofgrad: 2022,
    password: '123',
    image: 'assets/images/unknown.png'
  ),

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutor'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: dummyData.length,
        itemBuilder: (ctx, i) => TutorInfo(dummyData[i].image,dummyData[i].name,dummyData[i].topic),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
      ),
    )
    );
      
  }
}