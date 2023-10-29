import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
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
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: Text(
                    "Search",
                    style: TextStyle(fontFamily: 'Comfortaa', fontSize: 25),
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    //use expended if you are using textformfield in row
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  offset: const Offset(5, 5))
                            ]),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search here...',
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    blurRadius: 10,
                                    spreadRadius: 3,
                                    offset: const Offset(5, 5))
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.sort,
                              size: 26,
                            ),
                          )),
                    )
                  ],
                )
              ]),
            )));
  }
}
