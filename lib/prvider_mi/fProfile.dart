import 'package:flutter/material.dart';

class FProfile with ChangeNotifier{
    final String fname;
    final String fid;
    final String qual;
    final String yearOfExp;       //year of experience
    final String dept;
    final String phoneno;
    final String image;
    final String password;
    final String email;
    bool saved;
    
    FProfile(
      {
        @required this.fname,
        @required this.email,
        @required this.fid,
        @required this.phoneno,
       
        @required this.qual,
        @required this.dept,
        @required this.yearOfExp,
        @required this.password,
        this.image,
        this.saved = false,
        
      }
      
    );
    void toggleSaveStatus() {
    saved = !saved;
    notifyListeners();
  }

}