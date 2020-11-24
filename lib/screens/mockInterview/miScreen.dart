import 'package:flutter/material.dart';
import '../../widgets/miGrid.dart';
enum FilterOptions{
  Saved,
  All
}

class MIScreen extends StatefulWidget {
      static const routeName= '/miScreen';

  @override
  _MIState createState() => _MIState();
}
class _MIState extends State<MIScreen> {
    var _showOnlySaved = false;
@override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
       appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Mock Interview'),
          actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue){
              setState(() {
                if(selectedValue == FilterOptions.Saved){
                _showOnlySaved = true;
              }
              else{
                _showOnlySaved = false;

              }
              });
              
            },
            icon: Icon(Icons.more_vert,),
            itemBuilder: (_) =>[
              PopupMenuItem(child: Text('Show Saved'), value: FilterOptions.Saved),
              PopupMenuItem(child: Text('Show All'), value: FilterOptions.All),


            ]),
        ],
      ),
      
      body: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 238, 238, 238),
            boxShadow: [
            BoxShadow(offset: Offset(10,10),color:Color.fromARGB(80, 0, 0, 0),blurRadius: 10),
            BoxShadow(offset: Offset(10,10),color:Color.fromARGB(150 , 255, 255, 255),blurRadius: 10),]
        ),
        child: MIGrid(_showOnlySaved)),

    );
      
  }
}