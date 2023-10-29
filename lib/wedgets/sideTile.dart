import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SideMenueTile extends StatelessWidget {
  const SideMenueTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Divider(
            color: Colors.black12,
            height: 1,
          ),
        ),
        ListTile(
          leading: SizedBox(
            height: 34,
            width: 34,
            child: RiveAnimation.asset(
              "assets/images/home.riv",
              artboard: "HOME",
              onInit: (artboard) {},
            ),
          ),
          title: Text("HOME"),
        ),
      ],
    );
  }
}
