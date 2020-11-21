import 'package:flutter/material.dart';
import '../prvider_mi/fProfiles.dart';
import 'package:provider/provider.dart';


class MIInfoScreen  extends StatelessWidget {
  static const routeName = '/mi-detail';
  @override
  Widget build(BuildContext c) {

    final fid =
        ModalRoute.of(c).settings.arguments as String; // is the id!
    final loadedProfile = Provider.of<FProfiles>(
      c,
      listen: false,).findById(fid);

    double widthC = MediaQuery.of(c).size.width * 100;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.cyan,
          title: Text(loadedProfile.dept),
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
                
                _buildHeader(c, widthC),

                SizedBox(height: 10.0),

               
                //  build Bottom Section of Profile (include : email - phone number - about - location )
                
                _buildInfo(c, widthC),
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

  Widget _buildHeader(BuildContext c, double width) {
    final fid =
        ModalRoute.of(c).settings.arguments as String; // is the id!
    final loadedProfile = Provider.of<FProfiles>(
      c,
      listen: false,).findById(fid);

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
              _buildMainInfo(c, width)
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 210),
            child: _buildInfoCard(c)
        )
      ],
    );
  }

  Widget _buildInfoCard(c) {
    return Column(
      children: <Widget>[
        
      ],
    );
  }

  Widget _buildMainInfo(BuildContext c, double width) {
    final fid =
        ModalRoute.of(c).settings.arguments as String; // is the id!
    final loadedProfile = Provider.of<FProfiles>(
      c,
      listen: false,).findById(fid);

    return Container(
      width: width,
      margin: const EdgeInsets.all(10),
      alignment: AlignmentDirectional.center,
      child: Column(
        children: <Widget>[
          Text(loadedProfile.fname,style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(loadedProfile.dept,style: TextStyle(color: Colors.black45,fontStyle: FontStyle.italic))
        ],
      ),
    );
  }

  Widget _buildInfo(BuildContext c, double width) {
    final fid =
        ModalRoute.of(c).settings.arguments as String; // is the id!
    final loadedProfile = Provider.of<FProfiles>(
      c,
      listen: false,).findById(fid);

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
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          leading: Icon(Icons.calendar_today, color: Colors.cyan),
                          title: Text("Qualification",style: TextStyle(fontSize: 18,color: Colors.black)),
                          subtitle: Text(loadedProfile.qual,style: TextStyle(fontSize: 15,color: Colors.black54)),
                        ),
                        Divider(),
                    
                        ListTile(
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          leading: Icon(Icons.school, color: Colors.cyan),
                          title: Text("Year of Experience",style: TextStyle(fontSize: 18,color: Colors.black)),
                          subtitle: Text(loadedProfile.yearOfExp,style: TextStyle(fontSize: 15,color: Colors.black54)),
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

