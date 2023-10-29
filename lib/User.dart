import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'wedgets/newWidget.dart';
import 'wedgets/sideTile.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff0c414b),
              Color(0xff244e57),
              Color(0xff50919d),
              Color(0xffefeded),
              Color(0xfffdfdfd),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const NewWedget(
                name: "Saron optics",
                profession: "Admin",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 32, bottom: 16),
                child: Text(
                  "Browse".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.black),
                ),
              ),
              SideMenueTile()
            ],
          ),
        ),
      ),
    );
  }
}
