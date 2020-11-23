import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'miInfoWidget.dart';
import '../prvider_mi/fProfiles.dart';
class MIGrid extends StatelessWidget {
  final bool showSaved;
  MIGrid(this.showSaved);
  @override
  Widget build(BuildContext context) {
    final miData= Provider.of<FProfiles>(context);
    final mi= showSaved ? miData.savedFaculty : miData.profiles;
    return GridView.builder(
      
        padding: EdgeInsets.all(10.0),
        itemCount: mi.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          //create: (c) => tutor[i],
          value: mi[i],
           
          child: MIInfo(
          // tutor[i].image,
          // tutor[i].regNo,
          // tutor[i].name,
          // tutor[i].topic
          ),
          ),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
      ),
    );
  }
}