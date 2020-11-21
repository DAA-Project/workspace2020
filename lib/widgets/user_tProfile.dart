import 'package:flutter/material.dart';


class UserTProfile extends StatelessWidget {
  final String name;
  final String image;

  UserTProfile(this.name,this.image);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget> [
            IconButton(icon: Icon(Icons.edit),onPressed: (){},color: Colors.red[100],),
            IconButton(icon: Icon(Icons.delete),onPressed: (){},color: Colors.red,),

          ],
        ),
      ),
    );
  }
}