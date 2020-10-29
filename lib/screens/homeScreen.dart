import 'package:flutter/material.dart';
import 'package:workspace/screens/tutorScreen.dart';


class HomeScreen extends StatelessWidget {
  
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WORKSPACE'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 200,width: 100,
                      child: RaisedButton(
                        color: Colors.red,
                        child: Text("Tutor",
                        style: TextStyle(
                          fontSize: 20
                        ),),
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TutorScreen()),);
                        },
                      ),
                    ),
                  ),
                  SizedBox(width:10),
                  Expanded(
                    child: SizedBox(height: 200,width: 100,
                      child: RaisedButton(
                        color: Colors.purple,
                        child: Text("Mock Interview"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ]
              ),
              SizedBox(height: 8,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(height: 200,width: 100,
                      child: Container(
                        child: RaisedButton(
                           color: Colors.orange,
                           child: Text("ToDo"),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width:10),
                  Expanded(
                    child: SizedBox(height: 200,width: 100,
                      child: RaisedButton(
                        color: Colors.amber,
                        child: Text("T.I.M.E"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ]
              )
          ],
        ),
      ),
      
    );
  }
}