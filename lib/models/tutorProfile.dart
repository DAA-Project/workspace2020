import 'package:flutter/material.dart';

class TutorProfile{
  final String name;
  int regNo;
  int currentyear;
  int yearofgrad;
  String email;
  int phoneno;
  String topic;
  String grade;
  String other;
  String password;
  String image;

  TutorProfile(
    {
      @required this.name,
      @required this.regNo,
      @required this.currentyear,
      @required this.topic,
      this.grade,
      @required this.yearofgrad,
      @required this.email,
      @required this.phoneno,
      @required this.password,
      this.other,
      this.image
    }
  ); 
}