import 'package:flutter/material.dart';

class StudentProfile{
  final String name;
  int regNo;
  int currentyear;
  int yearofgrad;
  String email;
  int phoneno;
  String password;
  String image;

  StudentProfile(
    {
      @required this.name,
      @required this.regNo,
      @required this.currentyear,
      @required this.yearofgrad,
      @required this.email,
      @required this.phoneno,
      @required this.password,
      this.image
    }
  ); 
}