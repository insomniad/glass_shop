import 'package:flutter/material.dart';
import 'package:glass_shop/login_screen.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Image.asset('assets/images/admin.png'),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: SafeArea(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => LogInScreen(),
                        ));
                      },
                      child: Text('Log In',
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Comfortaa')),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffc3c3c3),
                        side: BorderSide(color: Colors.black),
                        elevation: 25,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
