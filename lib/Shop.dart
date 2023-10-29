import 'dart:io';
import 'package:flutter/material.dart';
import 'styles.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'custom_rect_tween.dart';
import 'hero_dialog_route.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controler;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controler!.pauseCamera();
    } else if (Platform.isIOS) {
      controler!.resumeCamera();
    }
  }

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
              Color(0xffefeded),
              Color(0xfffdfdfd),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                    child: Text(
                  "Shop",
                  style: TextStyle(fontFamily: 'Comfortaa', fontSize: 25),
                )),
              ),
              Center(
                  child: Text(
                "Name:Nebyu Glasses",
                style: TextStyle(fontFamily: 'Comfortaa', fontSize: 15),
              )),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Location:Atlas Branch",
                  style: TextStyle(fontFamily: 'Comfortaa', fontSize: 15),
                ),
              )),
              Center(
                  child: Text(
                "Active ",
                style: TextStyle(fontFamily: 'Comfortaa', fontSize: 15),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffc6c4c4),
                        offset: Offset(4.0, 4.0),
                      ),
                    ],
                    color: Color(0xffe1dfdf),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Sales:Weekly",
                            style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "23",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    "Items sold",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              VerticalDivider(
                                color: Colors.black,
                                thickness: 0.2,
                                width: 80,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "2,350",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    "Birr",
                                    style: TextStyle(fontSize: 15),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Products ",
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      FloatingActionButton(
                          focusColor: Color(0xff125e57),
                          splashColor: Color(0xff125e57),
                          backgroundColor: Color(0xff125e57),
                          hoverColor: Color(0xff21867b),
                          child: Icon(Icons.add),
                          onPressed: () {
                            Navigator.of(context)
                                .push(HeroDialogRoute(builder: (context) {
                              return const _AddTodoPopupCard();
                            }));
                          }),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffe1dfdf),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffe1dfdf),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffe1dfdf),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffe1dfdf),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const String _heroAddTodo = 'add-todo-hero';

/// {@template add_todo_popup_card}
/// Popup card to add a new [Todo]. Should be used in conjuction with
/// [HeroDialogRoute] to achieve the popup effect.
///
/// Uses a [Hero] with tag [_heroAddTodo].
/// {@endtemplate}
class _AddTodoPopupCard extends StatelessWidget {
  /// {@macro add_todo_popup_card}
  const _AddTodoPopupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: _heroAddTodo,
          createRectTween: (begin, end) {
            return CustomRectTween(begin: begin!, end: end!);
          },
          child: Material(
            color: AppColors.accentColor,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        "Add Product",
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'Product Name',
                          hintStyle: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 15,
                            color: Colors.white,
                          )
                          //border: InputBorder,
                          ),
                      cursorColor: Colors.white,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'Price',
                          hintStyle: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 15,
                            color: Colors.white,
                          )
                          //border: InputBorder,
                          ),
                      cursorColor: Colors.white,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'Inventory',
                          hintStyle: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 15,
                            color: Colors.white,
                          )
                          //border: InputBorder,
                          ),
                      cursorColor: Colors.white,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: 'Qr number',
                          hintStyle: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 15,
                            color: Colors.white,
                          )
                          //border: InputBorder,
                          ),
                      cursorColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Add Image',
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Scan QR',
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'ADD',
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
