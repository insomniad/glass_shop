import 'package:flutter/material.dart';
import 'package:glass_shop/User.dart';
import 'package:glass_shop/search.dart';
import 'Dashboard.dart';
import 'woekshop.dart';
import 'styles.dart';

import 'custom_rect_tween.dart';
import 'hero_dialog_route.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    DashBoard(),
    Search(),
    WorkShop(),
    User(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DashBoard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        focusColor: Color(0xff125e57),
        splashColor: Color(0xff125e57),
        backgroundColor: Color(0xff125e57),
        hoverColor: Color(0xff21867b),
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(HeroDialogRoute(builder: (context) {
            return const _AddTodoPopupCard();
          }));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = DashBoard();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard,
                            color: currentTab == 0
                                ? Color(0xff226e74)
                                : Colors.grey),
                        Text(
                          "Dash",
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontSize: 10,
                              color: currentTab == 0
                                  ? Color(0xff226e74)
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = Search();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search,
                            color: currentTab == 1
                                ? Color(0xff226e74)
                                : Colors.grey),
                        Text(
                          "Search",
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontSize: 10,
                              color: currentTab == 1
                                  ? Color(0xff226e74)
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = WorkShop();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_repair_service,
                            color: currentTab == 3
                                ? Color(0xff226e74)
                                : Colors.grey),
                        Text(
                          "Workshop",
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontSize: 10,
                              color: currentTab == 3
                                  ? Color(0xff226e74)
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = User();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.manage_accounts,
                            color: currentTab == 4
                                ? Color(0xff226e74)
                                : Colors.grey),
                        Text(
                          "User",
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontSize: 10,
                              color: currentTab == 4
                                  ? Color(0xff226e74)
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: const Text(
                        "Add Shop",
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
                          hintText: 'Shop Name',
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
                          hintText: 'Shop Location',
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
                          hintText: 'Activity status',
                          hintStyle: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 15,
                            color: Colors.white,
                          )
                          //border: InputBorder,
                          ),
                      cursorColor: Colors.white,
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Add',
                        style: TextStyle(
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
