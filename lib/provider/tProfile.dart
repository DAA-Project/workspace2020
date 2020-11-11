import 'package:flutter/material.dart';

class TProfile with ChangeNotifier{

  final String name;
  final String regNo;
  final String currentyear;
  final String yearofgrad;
  final String email;
  final String phoneno;
  final String topic;
  String grade;
  String other;
  final String password;
  String image;
  bool saved;

  TProfile(
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
      @required this.other,
      this.image,
      this.saved = false,
    }
  );


  void toggleSaveStatus() {
    saved = !saved;
    notifyListeners();
  }
}