import 'package:flutter/material.dart';
import 'package:workspace/dummy_data.dart';
import 'package:workspace/studentOptions.dart';
import '../dummy_data.dart';
import '../studentOptions.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WORKSPACE'),
        ),
      body: GridView(
        padding: const EdgeInsets.all(25),
          children: dummyData
            .map(
              (catData) => StudentOptions(
                    catData.title,
                    catData.color,
                  ),
            )
            .toList(),
          gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
          
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
        ),
        ),
      
    );
  }
}