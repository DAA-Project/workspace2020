import 'package:flutter/material.dart';

import 'tProfile.dart';

class TProfiles with ChangeNotifier {
  List<TProfile> _profiles = [
    TProfile(
    
    name: 'Anita Sharma',
    topic: 'Data Structures',
    grade: 'B+',
    email: 'anita@gmail.com',
    phoneno: '9829635421',
    regNo: '189303177',
    currentyear: '2',
    yearofgrad: '2022',
    password: '123',
    image: 'assets/images/unknown.png',
    other: 'N/A'
  ),
  TProfile(
    
    name: 'Rakesh Patel',
    topic: 'Computer Architecture',
    grade: 'A',
    email: 'rakesh@hotmail.com',
    phoneno: '9158463258',
    regNo: '189303166',
    currentyear: '2',
    yearofgrad: '2022',
    password: '123',
    image: 'assets/images/unknown.png',
    other: 'N/A'

  ),

  ];

  List<TProfile> get profiles {
    return [..._profiles];
  }


  List<TProfile> get savedTutors{
    return _profiles.where((tutorProfile) => tutorProfile.saved).toList();
  }

  TProfile findById(String regNo) {
    return _profiles.firstWhere((tutor) => tutor.regNo == regNo);
  }



  void addProfile() {
    // _tprofiles.add(value);
    notifyListeners();
  }
}
