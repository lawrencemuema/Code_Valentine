// ignore_for_file: library_private_types_in_public_api, unnecessary_new, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:redday/about.dart';
import 'collections.dart';

import 'bottomnav.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Love message',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const RandomLoveMessage(),
    );
  }
}

class RandomLoveMessage extends StatefulWidget {
  const RandomLoveMessage({super.key});

  @override
  // ignore: no_logic_in_create_state
  _RandomLoveMessageState createState() => _RandomLoveMessageState('');
}

class _RandomLoveMessageState extends State<RandomLoveMessage> {
  late String _TextToDisplay;

  _RandomLoveMessageState(this._TextToDisplay);

  void _generateMessage() {
    setState(() {
      _TextToDisplay = classmessages
          .loveMessages[new DateTime.now().millisecondsSinceEpoch % 10];
    });
  }

  void _generateJoke() {
    setState(() {
      _TextToDisplay =
          classjokes.lovejokes[new DateTime.now().millisecondsSinceEpoch % 10];
    });
  }

  void _generateIdeas() {
    setState(() {
      _TextToDisplay = classIdeas
          .coupleIdeas[new DateTime.now().millisecondsSinceEpoch % 10];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _TextToDisplay =
          classjokes.lovejokes[new DateTime.now().millisecondsSinceEpoch % 10];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SafeArea(
            child: Column(
              children: [
                //! item 1 nav
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                    Text("Hi loves")
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/1.png"), //image from canva
                ),
                const Text(
                  "This Valentines",
                  style:
                      TextStyle(fontStyle: FontStyle.italic, color: Colors.red),
                ),
                const SizedBox(
                  height: 40,
                ),

                const Text(
                  "Choose your poison",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: _generateIdeas,
                      child: const Text('Val Ideas'),
                    ),
                    ElevatedButton(
                      onPressed: _generateMessage,
                      child: const Text('Love Message'),
                    ),
                    ElevatedButton(
                      onPressed: _generateJoke,
                      child: const Text('Love Joke'),
                    ),
                  ],
                ),
                const Divider(
                  height: 10,
                  color: Colors.pink,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        // height: 200,
                        padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                        decoration: BoxDecoration(
                            // color: Color.fromARGB(255, 32, 13, 13),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          // ignore: prefer_if_null_operators
                          _TextToDisplay,
                          style: const TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
                const LikeButton(
                  size: 100,
                )
              ],
            ),
          ),
        ),
        //

        bottomNavigationBar: bottomnavwidget());
  }
}
