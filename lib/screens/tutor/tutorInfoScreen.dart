import 'package:flutter/material.dart';
import '../../provider/tProfiles.dart';
import 'package:provider/provider.dart';


class TutorInfoScreen  extends StatelessWidget {
  static const routeName = '/tutor-detail';
  @override
  Widget build(BuildContext context) {

    final regNo =
        ModalRoute.of(context).settings.arguments as String; // is the id!
    final loadedProfile = Provider.of<TProfiles>(
      context,
      listen: false,).findById(regNo);

    double widthC = MediaQuery.of(context).size.width * 100;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.cyan,
          title: Text(loadedProfile.topic),
        ),
        body: Container(
          height: 1000,
           decoration: BoxDecoration(
            color: Color.fromARGB(255, 238, 238, 238),
            boxShadow: [
            BoxShadow(offset: Offset(10,10),color:Color.fromARGB(80, 0, 0, 0),blurRadius: 10),
            BoxShadow(offset: Offset(10,10),color:Color.fromARGB(150 , 255, 255, 255),blurRadius: 10),]),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[

               
                // build Top Section of Profile (include : Image & main info & card of info[photos ... ] )
                
                _buildHeader(context, widthC),

                SizedBox(height: 10.0),

               
                //  build Bottom Section of Profile (include : email - phone number - about - location )
                
                _buildInfo(context, widthC),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      elevation: 8,
                      onPressed: () {},
                      child: Text('Call',
                      style: TextStyle(
                    color: Colors.black38,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),),
                      SizedBox(width:75),
                      RaisedButton(color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      elevation: 8,
                      onPressed: () {},
                      child: Text('Chat',
                      style: TextStyle(
                    color: Colors.black38,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),),
                  ],
                )

              ],
            ),
          ),
        ));
  }

  Widget _buildHeader(BuildContext context, double width) {
    final regNo =
        ModalRoute.of(context).settings.arguments as String; // is the id!
    final loadedProfile = Provider.of<TProfiles>(
      context,
      listen: false,).findById(regNo);

    return Stack(
      children: <Widget>[
        Ink(
          height: 250,
          color: Colors.deepOrangeAccent,
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                color: Colors.deepOrange,
                child: Container(
                  width: 150,
                  height: 150,
                   
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(500),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(500),
                      child: Image.asset(
                          loadedProfile.image,
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill)),
                ),
              ),
              _buildMainInfo(context, width)
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 210),
            child: _buildInfoCard(context)
        )
      ],
    );
  }

  Widget _buildInfoCard(context) {
    return Column(
      children: <Widget>[
        
      ],
    );
  }

  Widget _buildMainInfo(BuildContext context, double width) {
    final regNo =
        ModalRoute.of(context).settings.arguments as String; // is the id!
    final loadedProfile = Provider.of<TProfiles>(
      context,
      listen: false,).findById(regNo);

    return Container(
      width: width,
      margin: const EdgeInsets.all(10),
      alignment: AlignmentDirectional.center,
      child: Column(
        children: <Widget>[
          Text(loadedProfile.name,style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(loadedProfile.topic,style: TextStyle(color: Colors.black45,fontStyle: FontStyle.italic))
        ],
      ),
    );
  }

  Widget _buildInfo(BuildContext context, double width) {
    final regNo =
        ModalRoute.of(context).settings.arguments as String; // is the id!
    final loadedProfile = Provider.of<TProfiles>(
      context,
      listen: false,).findById(regNo);

    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          color: Colors.white,
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.subject, color: Colors.cyan),
                      title: Text("Other Subjects",style: TextStyle(fontSize: 18,color: Colors.black)),
                      subtitle: Text(
                          loadedProfile.other,style: TextStyle(fontSize: 15,color: Colors.black54)),
                    ),
                    Divider(),
                    ListTile(
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          leading: Icon(Icons.calendar_today, color: Colors.cyan),
                          title: Text("Current Year",style: TextStyle(fontSize: 18,color: Colors.black)),
                          subtitle: Text(loadedProfile.currentyear,style: TextStyle(fontSize: 15,color: Colors.black54)),
                        ),
                        Divider(),
                    
                        ListTile(
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          leading: Icon(Icons.school, color: Colors.cyan),
                          title: Text("Year of Graduation",style: TextStyle(fontSize: 18,color: Colors.black)),
                          subtitle: Text(loadedProfile.yearofgrad,style: TextStyle(fontSize: 15,color: Colors.black54)),
                        ),
                         Divider(),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.cyan),
                      title: Text("Phone Number",style: TextStyle(fontSize: 18,color: Colors.black)),
                      subtitle: Text(loadedProfile.phoneno,style: TextStyle(fontSize: 15,color: Colors.black54)),
                    ),
                    Divider(),

                    ListTile(
                      leading: Icon(Icons.email, color: Colors.cyan),
                      title: Text("E-Mail",style: TextStyle(fontSize: 18,color: Colors.black)),
                      subtitle: Text(loadedProfile.email,style: TextStyle(fontSize: 15,color: Colors.black54)),
                    ),
                   
                    
                        
                      
                    
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

