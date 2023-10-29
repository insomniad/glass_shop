import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NewWedget extends StatelessWidget {
  const NewWedget({
    super.key,
    required this.name,
    required this.profession,
  });
  final String name, profession;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0xff50919d),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Comfortaa',
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        profession,
        style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Comfortaa',
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
