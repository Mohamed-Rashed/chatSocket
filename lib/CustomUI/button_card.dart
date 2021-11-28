import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  ButtonCard({Key? key, required this.name, required this.icon, required this.fun})
      : super(key: key);
  final String name;
  final IconData icon;
  final GestureTapCallback fun;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: fun,
      leading: CircleAvatar(
        radius: 23,
        child: Icon(
          icon,
          size: 26,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff25D366),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
