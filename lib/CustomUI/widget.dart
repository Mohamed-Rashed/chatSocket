


import 'package:flutter/material.dart';

Widget bottomsheet(BuildContext context){
  return Container(
    height: 287,
    width: MediaQuery.of(context).size.width,
    child: Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconcreation("Document" , Icons.insert_drive_file,Colors.indigo),
                iconcreation("Camera" , Icons.camera_alt,Colors.pink),
                iconcreation("Gallery" , Icons.insert_photo,Colors.purple),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconcreation("Audio" , Icons.headset,Colors.orange),
                iconcreation("Location" , Icons.location_pin,Colors.teal),
                iconcreation("Contact" , Icons.person,Colors.blue),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget iconcreation(String namelabel, IconData iconname , Color color){
  return InkWell(
    onTap: (){

    },
    child: Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(
            iconname,
            size: 29,
          ),
        ),
        SizedBox(height: 5,),
        Text(namelabel,style: TextStyle(
          fontSize: 12
        ),),
      ],
    ),
  );
}