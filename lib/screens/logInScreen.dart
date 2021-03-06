import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'signup/signUpOptionScreen.dart';
import './home/homeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberMe = false;

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50,
        ),
        Text(
          'Email',
          style: TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey[400],
                ),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Forgot Password"),
        padding: EdgeInsets.only(right: 0),
        child: Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildRememberCb() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.grey),
              child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.cyan,
                activeColor: Color.fromARGB(255, 238, 238, 238),
                onChanged: (value) {
                  setState(() {
                    isRememberMe = value;
                  });
                },
              )),
          Text(
            'Remember me',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen()),);},
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Colors.grey[900],
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildSignUpBtn() {
    return GestureDetector(
      onTap: () {Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUpOptionScreen()),);},
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: 'Do not have an account? ',
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 18,
                  fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
              child: Stack(children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
            color: Color.fromARGB(255, 238, 238, 238),
            boxShadow: [
            BoxShadow(offset: Offset(10,10),color:Color.fromARGB(80, 0, 0, 0),blurRadius: 10),
            BoxShadow(offset: Offset(10,10),color:Color.fromARGB(150 , 255, 255, 255),blurRadius: 10),]
        ),
        
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 120,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      // decoration: BoxDecoration(
                      //   color: Colors.grey[500],
                      //   ),
                      child: Text(
                        'WELCOME TO WORKSPACE',
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                       ),
                    ),        
                    SizedBox(height: 5,
                                  child: Divider(
                                  color: Colors.black,
                                ),
                              ),
                    SizedBox(height: 50),
                    buildEmail(),
                    SizedBox(height: 20),
                    buildPassword(),
                    buildForgotPassBtn(),
                    buildRememberCb(),
                    buildLoginBtn(),
                    buildSignUpBtn(),
                  ],
                ),
              ),
            )
          ]))),
    );
  }
}