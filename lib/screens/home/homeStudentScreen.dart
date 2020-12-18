import 'package:flutter/material.dart';
import 'package:workspace/screens/tutor/tutorScreen.dart';
import '../../widgets/homeStudentDrawer.dart';
import '../mockInterview/miScreen.dart';

class HomeStudentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('WORKSPACE'),
          backgroundColor: Colors.cyan,
          elevation: 10,
          shadowColor: Colors.cyan),
      drawer: HomeStudentDrawer(),
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      body: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 238, 238, 238),
            boxShadow: [
              BoxShadow(
                  offset: Offset(10, 10),
                  color: Color.fromARGB(80, 0, 0, 0),
                  blurRadius: 10),
              BoxShadow(
                  offset: Offset(10, 10),
                  color: Color.fromARGB(150, 255, 255, 255),
                  blurRadius: 10),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25),
              Row(children: <Widget>[
                Expanded(
                  child: SizedBox(
                      height: 200,
                      width: 100,
                      child: Material(
                        color: Colors.transparent,
                        child: RaisedButton(
                            elevation: 15,
                            splashColor: Colors.cyan,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.grey)),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TutorScreen()),
                              );
                            },
                            child: FittedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/images/tuition.jpg'),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('TUTOR',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                              fit: BoxFit.fill,
                            )),
                      )),
                ),
                SizedBox(width: 25),
                Expanded(
                  child: SizedBox(
                      height: 200,
                      width: 100,
                      child: Material(
                        color: Colors.transparent,
                        child: RaisedButton(
                            elevation: 15,
                            splashColor: Colors.cyan,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.grey)),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MIScreen()),
                              );
                            },
                            child: FittedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/images/interview.jpg'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('MOCK INTERVIEW',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                              fit: BoxFit.fill,
                            )),
                      )),
                ),
              ]),
              SizedBox(
                height: 40,
              ),
              Row(children: <Widget>[
                Expanded(
                  child: SizedBox(
                    height: 200,
                    width: 100,
                    child: Container(
                        child: Material(
                      color: Colors.transparent,
                      child: RaisedButton(
                          elevation: 15,
                          splashColor: Colors.cyan,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey)),
                          color: Colors.white,
                          onPressed: () {},
                          child: FittedBox(
                            child: Column(
                              children: [
                                Image.asset('assets/images/todo.png'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('TODO',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                            fit: BoxFit.fill,
                          )),
                    )),
                  ),
                ),
                SizedBox(width: 25),
                Expanded(
                  child: SizedBox(
                      height: 200,
                      width: 100,
                      child: Material(
                        color: Colors.transparent,
                        child: RaisedButton(
                            elevation: 15,
                            splashColor: Colors.cyan,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.grey)),
                            color: Colors.white,
                            onPressed: () {},
                            child: FittedBox(
                              child: Column(
                                children: [
                                  Image.asset('assets/images/time.png'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('T.I.M.E',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                              fit: BoxFit.fill,
                            )),
                      )),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
