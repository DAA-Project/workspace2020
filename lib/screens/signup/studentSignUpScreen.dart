import 'package:flutter/material.dart';

class StudentSignUp extends StatefulWidget {
  @override
  _StudentSignUpState createState() => _StudentSignUpState();
}

class _StudentSignUpState extends State<StudentSignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _regNo = TextEditingController();
  TextEditingController _contact = TextEditingController();
  TextEditingController _cYear = TextEditingController();
  TextEditingController _gYear = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student SignUp'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _name,
                  decoration:
                      InputDecoration(hintText: 'Name', labelText: 'Name'),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Name';
                  },
                ),
                TextFormField(
                  controller: _regNo,
                  decoration: InputDecoration(
                    hintText: 'Registration Number',
                    labelText: 'Registration Number',
                  ),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Reg No';
                  },
                ),
                TextFormField(
                  controller: _contact,
                  decoration: InputDecoration(
                      hintText: 'Contact', labelText: 'Contact'),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter contact';
                  },
                ),
                TextFormField(
                  controller: _cYear,
                  decoration: InputDecoration(
                      hintText: '1st, 2nd, 3rd, 4th',
                      labelText: 'Current Year'),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter current year';
                  },
                ),
                TextFormField(
                  controller: _gYear,
                  decoration: InputDecoration(
                      hintText: 'Graduation Year',
                      labelText: 'Graduation Year'),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Grad year';
                  },
                ),
                TextFormField(
                  controller: _email,
                  decoration:
                      InputDecoration(hintText: 'Email', labelText: 'Email'),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Email';
                  },
                ),
                TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                      hintText: 'Password', labelText: 'Password'),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Passsword';
                  },
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('SignUp'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {}
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
