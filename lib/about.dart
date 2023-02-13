import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:redday/main.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                //! item 1 nav
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RandomLoveMessage()));
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                    Text("Lovely Author")
                  ],
                ),
                //! item 2
                const SizedBox(
                  height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/2.png"), //image from canva
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Love has no name",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Lawrence Muema hopes you find love.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Nairobi, Kenya",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.pink),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: BlurryContainer(
                      borderRadius: BorderRadius.circular(20),
                      blur: 7,
                      color: Colors.teal,
                      child: const Center(
                        child: Text(
                          "Lets keep on creating #PLP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const profile()));
                  },
                ),
              ]),
        ));
  }
}
