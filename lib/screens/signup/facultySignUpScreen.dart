import 'package:flutter/material.dart';

class FacultySignUp extends StatefulWidget {
  @override
  _FacultySignUpState createState() => _FacultySignUpState();
}

class _FacultySignUpState extends State<FacultySignUp> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _regNo = TextEditingController();
  TextEditingController _contact = TextEditingController();
  TextEditingController _department = TextEditingController();
  TextEditingController _subject = TextEditingController();
  TextEditingController _oPrj = TextEditingController();
  TextEditingController _rPaper = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faculty SignUp'),
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
                  controller: _department,
                  decoration: InputDecoration(
                    hintText: 'Department'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter department';
                  },
                ),
                TextFormField(
                  controller: _subject,
                  decoration: InputDecoration(
                    hintText: 'Subject'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Subject';
                  },
                ),
                TextFormField(
                  controller: _oPrj,
                  decoration: InputDecoration(
                    hintText: 'Ongoing Projects'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Ongoing Projects';
                  },
                ),
                TextFormField(
                  controller: _rPaper,
                  decoration: InputDecoration(
                    hintText: 'Research Paper'
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Research Paper';
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