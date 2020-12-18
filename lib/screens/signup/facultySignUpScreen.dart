import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:workspace/screens/home/homeScreen.dart';
import 'package:workspace/utils/hosting.dart';

class FacultySignUp extends StatefulWidget {
  @override
  _FacultySignUpState createState() => _FacultySignUpState();
}

class _FacultySignUpState extends State<FacultySignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _facultyRegNo = TextEditingController();
  TextEditingController _contact = TextEditingController();
  TextEditingController _department = TextEditingController();

  TextEditingController _oPrj = TextEditingController();
  TextEditingController _rPaper = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  signUp() async {
    String url = apiHost + 'reg/facultyReg';
    http.Response response = await http.post(url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          "name": _name.text,
          "facultyRegNo": _facultyRegNo.text,
          "qualification": "Phd",
          "department": _department.text,
          "designation": "Associate Professor",
          "sitting": "14 FB-2 2AB",
          "contact": _contact.text,
          "email": _email.text,
          "password": _password.text,
          "whatsappContact": '',
          "classes": '',
          "Project": _oPrj.text,
          "ResearchPaper": _rPaper.text,
          "Mentees": ''
        }));
    print(response.body);
    if (response.statusCode == 200) {
      await Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
    } else {
      showDialog(
          context: context,
          child: AlertDialog(
            content: Text('Failed to register'),
            actions: [
              RaisedButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faculty SignUp'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextFormField(
                  controller: _name,
                  decoration: InputDecoration(
                      hintText: 'Name',
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.indigo,
                      )),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Name';
                  },
                ),
                TextFormField(
                  controller: _facultyRegNo,
                  decoration: InputDecoration(
                      hintText: 'Reg No',
                      prefixIcon: Icon(
                        Icons.keyboard,
                        color: Colors.indigo,
                      )),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Reg No';
                  },
                ),
                TextFormField(
                  controller: _contact,
                  decoration: InputDecoration(
                      hintText: 'Contact',
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Colors.indigo,
                      )),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter contact';
                  },
                ),
                TextFormField(
                  controller: _department,
                  decoration: InputDecoration(
                      hintText: 'Department',
                      prefixIcon: Icon(
                        Icons.school,
                        color: Colors.indigo,
                      )),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter department';
                  },
                ),
                TextFormField(
                  controller: _oPrj,
                  decoration: InputDecoration(
                      hintText: 'Ongoing Projects',
                      prefixIcon: Icon(
                        Icons.dns,
                        color: Colors.indigo,
                      )),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Ongoing Projects';
                  },
                ),
                TextFormField(
                  controller: _rPaper,
                  decoration: InputDecoration(
                      hintText: 'Research Paper',
                      prefixIcon: Icon(
                        Icons.assignment,
                        color: Colors.indigo,
                      )),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Research Paper';
                  },
                ),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.indigo,
                      )),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Email';
                  },
                ),
                TextFormField(
                  obscureText: true,
                  controller: _password,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.indigo,
                      )),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Passsword';
                  },
                ),
                RaisedButton(
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'SignUp',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    print('press');
                    if (_formKey.currentState.validate()) {
                      signUp();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
