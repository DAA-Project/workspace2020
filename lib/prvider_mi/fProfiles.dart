import 'package:flutter/material.dart';

import 'fProfile.dart';

class FProfiles with ChangeNotifier {
  List<FProfile> _profiles = [
    FProfile(
    
    fname: 'Anita Sharma',
    dept: 'Data Structures',
    email: 'anita@gmail.com',
    phoneno: '9829635421',
    fid: '189303177',
    yearOfExp: '2',
    qual: 'phd',
    password: '123',
    image: 'assets/images/unknown.png',
    
  ),
  FProfile(
    
    fname: 'Rakesh Patel',
    dept: 'Computer Architecture',
    
    email: 'rakesh@hotmail.com',
    phoneno: '9158463258',
    fid: '189303166',
    yearOfExp: '2',
    qual: 'phd',
    password: '123',
    image: 'assets/images/unknown.png',

  ),

  ];

  List<FProfile> get profiles {
    return [..._profiles];
  }


  List<FProfile> get savedFaculty{
    return _profiles.where((facultyProfile) => facultyProfile.saved).toList();
  }

  FProfile findById(String fid) {
    return _profiles.firstWhere((faculty) => faculty.fid == fid);
  }



  void addProfile() {
    // _fprofiles.add(value);
    notifyListeners();
  }
}