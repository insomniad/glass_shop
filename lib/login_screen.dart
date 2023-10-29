import 'package:flutter/material.dart';
import 'package:glass_shop/home.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff0c414b),
              Color(0xff244e57),
              Color(0xff50919d),
              Color(0xfffdfdfd),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            Image.asset('assets/images/admin.png'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                  child: Text('Log In',
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 25,
                          fontWeight: FontWeight.bold))),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => Home(),
                  ));
                },
                child: Text('Log In',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'Comfortaa')),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffffffff),
                  side: BorderSide(color: Colors.black),
                  elevation: 25,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
