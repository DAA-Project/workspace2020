import 'package:flutter/material.dart';
import 'package:workspace/provider/tProfiles.dart';
import '../screens/tutorInfoScreen.dart';
import 'package:provider/provider.dart';
import '../provider/tProfile.dart';

class TutorInfo extends StatelessWidget {
// final String image;
// final String name;
// final String topic;
// final String regNo;

// TutorInfo(this.image,this.regNo,this.name,this.topic);

  @override
  Widget build(BuildContext context) {
    final tutor=Provider.of<TProfile>(context, listen: false);
    return ClipRRect(
                borderRadius: BorderRadius.circular(10),
            child: GridTile(
              child: GestureDetector(
                onTap: () {
              Navigator.of(context).pushNamed(
                TutorInfoScreen.routeName,
                arguments: tutor.regNo);
                },
          child: Image.asset('assets/images/unknown.png',
          ),),
          footer: GridTileBar(
            
            backgroundColor: Colors.black54,
              leading: Consumer<TProfile>(
                builder: (ctx, tprofile, _) =>IconButton(
                icon: Icon(tutor.saved ? Icons.bookmark : Icons.bookmark_border,),
                color: Colors.white,
                onPressed: () {
                  tutor.toggleSaveStatus();
                },
              ),
              ),
              title: Text(
                tutor.name,
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.open_in_full,
                ),
                onPressed: () {},
                color: Colors.white,
              ),
            ),
        

        ),
      );
    
  }
}