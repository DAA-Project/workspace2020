import 'package:flutter/material.dart';

class TutorProfil{
  final int tid;
  int regNo;
  int currentyear;
  DateTime dob;
  String topic;
  String grade;
  String other;

  TutorProfil(
    {
      @required this.tid,
      @required this.regNo,
      @required this.currentyear,
      @required this.dob,
      @required this.topic,
      @required this.grade,
      this.other
    }
  ); 
}