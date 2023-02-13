// ignore_for_file: library_private_types_in_public_api, unnecessary_new, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:like_button/like_button.dart';
import 'package:redday/about.dart';

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
  final List _lovejokes = [
    "Why did the tomato turn red? Because it saw the salad dressing!",
    "Why did the coffee file for divorce? It got grounds.",
    "Why did the scarecrow win an award? Because he was outstanding in his field.",
    "Why did the man put his money in the freezer? He wanted cold hard cash.",
    "Why did the bicycle fall over? Because it was two-tired.",
    "Why did the math book look so sad? Because it had too many problems.",
    "Why did the computer go to the doctor? It had a virus.",
    "Why did the couple hold hands on a rollercoaster? They wanted to keep their balance.",
    "Why did the man cross the road? To get to the pub.",
    "Why did the woman put lipstick on her forehead? She wanted to make up her mind.",
    "Do you believe in love at first sight, or should I walk by again?",
    "I love you more than pizza, and that's saying a lot.",
    "Are you a magician? Because whenever I look at you, everyone else disappears.",
    "Do you have a map? I just got lost in your eyes.",
    "I must be a snowflake, because I've fallen for you.",
    "I'm not a photographer, but I can definitely picture us together.",
    "I must be lost, because heaven is a long way from here.",
    "Do you have a sunburn, or are you always this hot?",
    "You must be a UFO, because you just abducted my heart.",
    "I must be a time traveler, because I keep falling for you.",
    "Is it hot in here, or is it just you?",
    "Are you made of sugar? Because you're so sweet.",
    "Can I have your picture? I want Santa to know what I want for Christmas.",
    "You're the peanut butter to my jelly.",
    "Are you a UFO? Because you just made me believe in extraterrestrial life.",
    "You must be a diamond, because you sparkle.",
    "Can I tie your shoes? I can't have you falling for anyone else.",
    "You're the cheese to my macaroni.",
    "Do you believe in love at first sight, or should I walk by again?",
    "You must be a mermaid, because you've got me under your spell.",
    "Is your name Google? Because you have everything I've been searching for.",
    "Are you a time traveler? Because every time I look at you, it's the best moment of my life.",
    "You're the star to my sky.",
    "Are you a genie? Because you just granted my wish.",
    "You're the bacon to my breakfast.",
    "Is your name Ariel? Because you're a mermaid for me.",
    "Are you a magician? Because whenever I look at you, everything else disappears.",
    "You're the sugar to my cupcake.",
    "Is your name Cinderella? Because I think you just lost your shoe.",
    "You're the salt to my pepper.",
    "Are you a ninja? Because you just stole my heart.",
    "Is your name Rapunzel? Because you've got my heart locked away."
  ];
  final List _loveMessages = [
    "I love you more than words can express.",
    "You light up my life and make every day brighter.",
    "I can't imagine life without you by my side.",
    "Every moment with you is a treasure.",
    "You make my heart skip a beat.",
    "I feel so lucky to have you in my life.",
    "Your smile is the most beautiful thing I've ever seen.",
    "I love you more and more each day.",
    "You're my rock, my support, and my everything.",
    "I can't wait to spend forever with you.",
    "You bring out the best in me and make me want to be a better person.",
    "I love the way you make me laugh.",
    "I feel so safe and secure when I'm with you.",
    "You're my home and where I belong.",
    "I love everything about you.",
    "You're my reason to smile every day.",
    "You have a heart of gold and a soul so pure.",
    "I love how we can be silly together and serious when it counts.",
    "You make my heart full and I am so grateful.",
    "You're my best friend and my soulmate all in one.",
    "I love the way you look at me and make me feel special.",
    "You're always there for me, no matter what.",
    "I love how we can talk for hours and never run out of things to say.",
    "You bring so much joy and happiness into my life.",
    "I'm so thankful to have you as my partner in life.",
    "You make every day an adventure.",
    "I love how we can have deep conversations and silly ones all in the same day.",
    "You're my everything and I never want to let you go.",
    "I love how you make me feel beautiful, inside and out.",
    "You're my shoulder to cry on and my sunshine on a cloudy day.",
    "I love how we complement each other and bring out the best in each other."
        "You're my hero and my safe haven.",
    "I love your sense of humor and how you always know how to make me smile.",
    "You make me feel so loved and appreciated.",
    "I love how we have our own language and our own jokes.",
    "You're my guiding light and my beacon of hope.",
    "I love the way you touch my soul and make me feel complete.",
    "You're my dream come true and I never want to wake up.",
    "I love how we can share anything and everything with each other.",
    "You make my heart sing and my soul dance.",
    "I love the way you make me feel like the most important person in the world.",
    "You're my heart's desire and my soul's longing.",
    "I love how we can talk about anything and everything without judgment.",
    "You make me feel so alive and so loved.",
    "I love how we can just be ourselves and still love each other unconditionally.",
    "You're my king and I am your queen.",
    "I love how we can build each other up and help each other grow.",
    "You make my life complete and I am so grateful.",
    "I love how we can be silly and serious all in one breath.",
    "You're my sunshine on a cloudy day and my ray of hope in the dark.",
    "I love how we can learn and grow together.",
    "You make me feel so special and loved.",
    "I love how we can just enjoy each other's"
  ];
  final List _coupleIdeas = [
    "Cook a romantic dinner together at home.",
    "Take a couples dance class.",
    "Visit a local winery or vineyard for a wine tasting.",
    "Have a spa day together, including massages and a soak in the hot tub.",
    "Take a scenic hike or walk in nature.",
    "Plan a picnic in a local park with gourmet treats and a bottle of wine.",
    "Have a photo shoot together.",
    "Have a candlelit bath together.",
    "Spend the day volunteering at a local animal shelter.",
    "Go on a scenic drive and find a new restaurant to try.",
    "Attend a concert or show together.",
    "Have a DIY project day and create something new for your home.",
    "Visit a nearby city for a day trip and explore the local sights.",
    "Take a scenic drive and go stargazing.",
    "Have a potluck dinner with friends and enjoy a night in.",
    "Have a movie night under the stars in your backyard.",
    "Visit a local aquarium or zoo.",
    "Have a shopping day and pick out gifts for each other.",
    "Plan a surprise weekend getaway.",
    "Have a bonfire on the beach.",
    "Visit a local museum and learn something new together.",
    "Have a karaoke night at home.",
    "Visit a nearby theme park and go on all the rides together.",
    "Have a picnic in the park with a basket of gourmet treats.",
    "Take a scenic drive and find a new scenic overlook to enjoy the view.",
    "Rent a tandem bicycle and explore a new area together.",
    "Have a DIY project day and create something new for your home.",
    "Visit a local botanical garden and enjoy the beauty of nature together.",
    "Have a game night with board games and snacks.",
    "Rent a tandem bicycle and explore a new area together.",
    "Have a date night at a local arcade.",
    "Attend a sporting event or game together.",
    "Take a scenic drive and find a new scenic overlook to enjoy the view.",
    "Visit a local amusement park and go on all the rides together.",
    "Have a karaoke night at home.",
    "Have a potluck dinner with friends and enjoy a night in.",
    "Visit a nearby city for a day trip and explore the local sights.",
    "Have a bonfire on the beach.",
    "Attend a painting class and create a masterpiece together.",
    "Have a movie night under the stars in your backyard.",
    "Visit a local aquarium or zoo.",
    "Have a shopping day and pick out gifts for each other.",
    "Plan a surprise weekend getaway.",
    "Have a picnic in the park with a basket of gourmet treats.",
    "Take a scenic drive and find a new scenic overlook to enjoy the view.",
    "Rent a tandem bicycle and explore a new area together.",
    "Have a DIY project day and create something new for your home.",
    "Visit a local botanical garden and enjoy the beauty of nature together.",
    "Have a game night with board games and snacks.",
    "Visit a local museum and learn something new together.",
    "Have a karaoke night at home.",
    "Visit a nearby theme park and go on all the rides together.",
    "Have a picnic in the park with a basket of gourmet treats.",
    "Take a scenic drive and find a new scenic overlook to enjoy the view.",
    "Rent a tandem bicycle and explore a new area together.",
    "Have a DIY project day and create something new for your home.",
    "Visit a local botanical garden and enjoy the beauty of nature together.",
    "Have a game night with board games and snacks.",
    "Attend a painting class and create a masterpiece together.",
    "Have a movie night under the stars in your backyard.",
    "Visit a local aquarium or zoo.",
    "Have a shopping day and pick out gifts for each other.",
    "Plan a surprise weekend getaway.",
    "Have a picnic in the park with a basket of gourmet treats.",
    "Take a scenic drive and find a new scenic overlook to enjoy the view.",
    "Rent a tandem bicycle and explore a new area together.",
    "Have a DIY project day and create something new for your home.",
  ];
  late String _TextToDisplay;

  _RandomLoveMessageState(this._TextToDisplay);

  void _generateMessage() {
    setState(() {
      _TextToDisplay =
          _loveMessages[new DateTime.now().millisecondsSinceEpoch % 10];
    });
  }

  void _generateJoke() {
    setState(() {
      _TextToDisplay =
          _lovejokes[new DateTime.now().millisecondsSinceEpoch % 10];
    });
  }

  void _generateIdeas() {
    setState(() {
      _TextToDisplay =
          _coupleIdeas[new DateTime.now().millisecondsSinceEpoch % 10];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _TextToDisplay =
          _lovejokes[new DateTime.now().millisecondsSinceEpoch % 10];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text(''),
        // ),
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
                // const Text(
                //   "Find your Happiness",
                //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                // ),
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
