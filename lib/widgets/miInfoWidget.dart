import 'package:flutter/material.dart';
import '../screens/miInfoScreen.dart';
import 'package:provider/provider.dart';
import '../prvider_mi/fProfile.dart';

class MIInfo extends StatelessWidget {

  @override
  Widget build(BuildContext c) {
    final mi=Provider.of<FProfile>(c, listen: false);
    return ClipRRect(
                borderRadius: BorderRadius.circular(10),
            child: GridTile(
              child: GestureDetector(
                onTap: () {
              Navigator.of(c).pushNamed(
                MIInfoScreen.routeName,
                arguments: mi.fid);
                },
          child: Image.asset('assets/images/unknown.png',
          ),),
          footer: GridTileBar(
            
            backgroundColor: Colors.black54,
              leading: Consumer<FProfile>(
                builder: (ctx, fprofile, _) =>IconButton(
                icon: Icon(mi.saved ? Icons.bookmark : Icons.bookmark_border,),
                color: Colors.white,
                onPressed: () {
                  mi.toggleSaveStatus();
                  Scaffold.of(c).showSnackBar(SnackBar(
                    content: Text('Faculty Saved!',textAlign: TextAlign.center,),
                    duration: Duration(seconds: 2),
                    ),
                    
                    );
                },
              ),
              ),
              title: Text(
                mi.fname,
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