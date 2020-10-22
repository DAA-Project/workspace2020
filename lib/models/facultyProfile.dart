import 'package:flutter/material.dart';

class FacultyProfie{
    final String fname;
    final String fid;
    final int age;
    String qual;
    final double yearOfExp;       //year of experience
    final String note;
    
    FacultyProfie(
      {
        @required this.fname,
        @required this.fid,
        @required this.age,
        @required qual,
        @required this.yearOfExp,
        this.note,
      }
    );
}