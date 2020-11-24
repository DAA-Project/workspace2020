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
          height: MediaQuery.of(context).size.height*0.9,
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
                    prefixIcon: Icon(Icons.account_circle, color: Colors.indigo,)
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Name';
                  },
                ),
                TextFormField(
                  controller: _regNo,
                  decoration: InputDecoration(
                    hintText: 'Registration Number',
                    prefixIcon: Icon(Icons.dialpad, color: Colors.indigo,)
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Reg No';
                  },
                ),
                TextFormField(
                  controller: _contact,
                  decoration: InputDecoration(
                    hintText: 'Contact',
                    prefixIcon: Icon(Icons.phone_android, color: Colors.indigo,)
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter contact';
                  },
                ),
                TextFormField(
                  controller: _cYear,
                  decoration: InputDecoration(
                    hintText: 'Current Year',
                    prefixIcon: Icon(Icons.event, color: Colors.indigo,)
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter current year';
                  },
                ),
                TextFormField(
                  controller: _gYear,
                  decoration: InputDecoration(
                    hintText: 'Graduation Year',
                    prefixIcon: Icon(Icons.calendar_today, color: Colors.indigo,)
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Graduation year';
                  },
                ),
                TextFormField(
                  controller: _grade,
                  decoration: InputDecoration(
                    hintText: 'Grade',
                    prefixIcon: Icon(Icons.school, color: Colors.indigo,)
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Grade';
                  },
                ),
                TextFormField(
                  controller: _topic,
                  decoration: InputDecoration(
                    hintText: 'Topic',
                    prefixIcon: Icon(Icons.book, color: Colors.indigo,)
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Topic';
                  },
                ),
                TextFormField(
                  controller: _other,
                  decoration: InputDecoration(
                    hintText: 'Other',
                    prefixIcon: Icon(Icons.add, color: Colors.indigo,)
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Other';
                  },
                ),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.mail, color: Colors.indigo,)
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Email';
                  },
                ),
                TextFormField(
                  obscureText: true,
                  controller: _password,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock, color: Colors.indigo,)
                  ),
                  validator: (value) {
                    if(value.isEmpty) return 'Enter Passsword';
                  },
                ),
                RaisedButton(
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Text('SignUp', style: TextStyle(color:Colors.white ),),
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