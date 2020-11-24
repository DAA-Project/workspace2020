import 'package:flutter/material.dart';
import 'facultySignUpScreen.dart';
import 'studentSignUpScreen.dart';
import 'tutorSignUpScreen.dart';
class SignUpOptionScreen extends StatefulWidget {
  @override
  _SignUpOptionScreenState createState() => _SignUpOptionScreenState();
}

class _SignUpOptionScreenState extends State<SignUpOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp Page'),
      ),
      body: Container(
       
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
             height: MediaQuery.of(context).size.height*0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Sign Up as ',
                        style: TextStyle(color: Colors.black, fontSize: 30)
                      ),
                    ]
                  ),
                ),
                RaisedButton(
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.07,
                    child: Text('Faculty', style: TextStyle(color: Colors.white, fontSize: 20))),
                  color: Colors.indigo,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FacultySignUp())),
                ),
                RaisedButton(
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.07,
                    child: Text('Tutor', style: TextStyle(color: Colors.white, fontSize: 20))),
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => TutorSignUp())),
                ),
                RaisedButton(
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.07,
                    child: Text('Student', style: TextStyle(color: Colors.white, fontSize: 20))),
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => StudentSignUp())),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}