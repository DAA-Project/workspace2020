import 'package:flutter/material.dart';
import 'signup/studentSignUpScreen.dart';
import 'signup/facultySignUpScreen.dart';
import 'signup/tutorSignUpScreen.dart';
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            color: Color.fromARGB(255, 238, 238, 238),
            boxShadow: [
            BoxShadow(offset: Offset(10,10),color:Color.fromARGB(80, 0, 0, 0),blurRadius: 10),
            BoxShadow(offset: Offset(10,10),color:Color.fromARGB(150 , 255, 255, 255),blurRadius: 10),]),
      child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget>[
          SizedBox(height:250),
          Container(
            height: 50,
            width: 300,
            child: RaisedButton(
                                elevation: 8,
                                
                                splashColor: Colors.cyan,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(color: Colors.grey)
                                ),
                                color: Colors.white,
                                onPressed: (){Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => TutorSignUp()),);},
                                  child:Text('Im a Tutor',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )),
                               ),
          ),
            Container(
            height: 50,
            width: 300,
            child: RaisedButton(
                                elevation: 8,
                                
                                splashColor: Colors.cyan,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(color: Colors.grey)
                                ),
                                color: Colors.white,
                                onPressed: (){Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => FacultySignUp()),);},
                                  child:Text('Im a Faculty',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )),
                               ),
          ),
           Container(
            height: 50,
            width: 300,
            child: RaisedButton(
                                elevation: 8,
                                
                                splashColor: Colors.cyan,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(color: Colors.grey)
                                ),
                                color: Colors.white,
                                onPressed: (){Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => StudentSignUp()),);},
                                  child:Text('Im a Student',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )),
                               ),
          )            
        ]
        
      ),
    );
  }
}