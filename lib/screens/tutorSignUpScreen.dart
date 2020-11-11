import 'package:flutter/material.dart';

class TutorSignUp extends StatefulWidget {
  @override
  _TutorSignUpState createState() => _TutorSignUpState();
}

class _TutorSignUpState extends State<TutorSignUp> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _regNo = TextEditingController();
  TextEditingController _contact = TextEditingController();
  TextEditingController _cYear = TextEditingController();
  TextEditingController _gYear = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _grade = TextEditingController();
  TextEditingController _topic = TextEditingController();
  TextEditingController _other = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutor SignUp'),
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
                  decoration: InputDecoration(
                    hintText: 'Name'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Name';
                  },
                ),
                TextFormField(
                  controller: _regNo,
                  decoration: InputDecoration(
                    hintText: 'Registration Number'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Reg No';
                  },
                ),
                TextFormField(
                  controller: _contact,
                  decoration: InputDecoration(
                    hintText: 'Contact'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter contact';
                  },
                ),
                TextFormField(
                  controller: _cYear,
                  decoration: InputDecoration(
                    hintText: 'Current Year'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter current year';
                  },
                ),
                TextFormField(
                  controller: _gYear,
                  decoration: InputDecoration(
                    hintText: 'Graduation Year'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Graduation year';
                  },
                ),
                TextFormField(
                  controller: _grade,
                  decoration: InputDecoration(
                    hintText: 'Grade'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Grade';
                  },
                ),
                TextFormField(
                  controller: _topic,
                  decoration: InputDecoration(
                    hintText: 'Topic'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Topic';
                  },
                ),
                TextFormField(
                  controller: _other,
                  decoration: InputDecoration(
                    hintText: 'Other'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Other';
                  },
                ),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Email';
                  },
                ),
                TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                    hintText: 'Password'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Passsword';
                  },
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Text('SignUp'),
                  onPressed: (){
                    if(_formKey.currentState.validate()){

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