import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/tutorProfile.dart';

class TProfiles with ChangeNotifier {
  List<TutorProfile> _tprofiles = [
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

  List<TutorProfile> get tprofiles {
    return [..._tprofiles];
  }

  TutorProfile findById(int regNo) {
    return _tprofiles.firstWhere((prod) => prod.regNo == regNo);
  }

  void addProfile() {
    // _tprofiles.add(value);
    notifyListeners();
  }
}
