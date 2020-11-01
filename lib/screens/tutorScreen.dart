import 'package:flutter/material.dart';
import '../widgets/tutorGrid.dart';
enum FilterOptions{
  Saved,
  All
}

class TutorScreen extends StatefulWidget {
  @override
  _TutorScreenState createState() => _TutorScreenState();
}

class _TutorScreenState extends State<TutorScreen> {
    var _showOnlySaved = false;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutor'),
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
      body: TutorGrid(_showOnlySaved),

    );
      
  }
}