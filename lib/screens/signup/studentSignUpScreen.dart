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
          height: MediaQuery.of(context).size.height*0.9,
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextFormField(
                  controller: _name,
                  decoration:
                      InputDecoration(
                        hintText: 'Name', 
                        labelText: 'Name',
                        prefixIcon: Icon(Icons.account_circle, color: Colors.indigo,)),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Name';
                  },
                ),
                TextFormField(
                  controller: _regNo,
                  decoration: InputDecoration(
                    hintText: 'Registration Number',
                    labelText: 'Registration Number',
                    prefixIcon: Icon(Icons.dialpad, color: Colors.indigo,)
                  ),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Reg No';
                  },
                ),
                TextFormField(
                  controller: _contact,
                  decoration: InputDecoration(
                      hintText: 'Contact', 
                      labelText: 'Contact',
                      prefixIcon: Icon(Icons.phone_android, color: Colors.indigo,)
                    ),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter contact';
                  },
                ),
                TextFormField(
                  controller: _cYear,
                  decoration: InputDecoration(
                      hintText: '1st, 2nd, 3rd, 4th',
                      labelText: 'Current Year',
                      prefixIcon: Icon(Icons.event, color: Colors.indigo,)
                    ),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter current year';
                  },
                ),
                TextFormField(
                  controller: _gYear,
                  decoration: InputDecoration(
                      hintText: 'Graduation Year',
                      labelText: 'Graduation Year',
                      prefixIcon: Icon(Icons.calendar_today, color: Colors.indigo,)),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Grad year';
                  },
                ),
                TextFormField(
                  controller: _email,
                  decoration:
                      InputDecoration(
                        hintText: 'Email', 
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.mail, color: Colors.indigo,)),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Email';
                  },
                ),
                TextFormField(
                  obscureText: true,
                  controller: _password,
                  decoration: InputDecoration(
                      hintText: 'Password', 
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock, color: Colors.indigo,)),
                  validator: (value) {
                    if (value.isEmpty) return 'Enter Passsword';
                  },
                ),
                RaisedButton(
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('SignUp',style: TextStyle(color: Colors.white),),
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
