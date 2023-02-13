import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import 'about.dart';
import 'main.dart';

class bottomnavwidget extends StatelessWidget {
  const bottomnavwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: GNav(
          backgroundColor: Colors.white, //* the nav color
          color: const Color.fromARGB(255, 86, 81, 95),
          tabBackgroundColor: Colors.pink,
          activeColor: Colors.white,
          gap: 10,
          tabs: [
            GButton(
              icon: Icons.favorite,
              text: "Love Struck",
              iconColor: Colors.pink,
              onPressed: () {
                //todo: add navigator
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RandomLoveMessage()));
              },
            ),
            GButton(
              icon: Icons.settings,
              text: "author",
              onPressed: () {
                //todo: add navigator
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const profile()));
              },
            ),
          ]),
    );
  }
}
