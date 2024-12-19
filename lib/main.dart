import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatefulWidget {
  const PortfolioHome({super.key});

  @override
  State<PortfolioHome> createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  final List<String> texts = [
    "a Web Developer",
    "a Web Designer",
    "Flutter Developer",
    "DevOps Ingineer",
  ];
  String currentText = "";
  int currentIndex = 0;
  int charIndex = 0;
  bool isTyping = true;

  late Timer typingTimer;

  @override
  void initState() {
    super.initState();
    _startTypingAnimation();
  }

  void _startTypingAnimation() {
    typingTimer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        if (isTyping) {
          // Typing one character at a time
          if (charIndex < texts[currentIndex].length) {
            currentText += texts[currentIndex][charIndex];
            charIndex++;
          } else {
            // Pause before deleting
            isTyping = false;
            Future.delayed(const Duration(seconds: 2), () {
              _startTypingAnimation(); // Restart typing animation
            });
            typingTimer.cancel();
          }
        } else {
          // Deleting one character at a time
          if (charIndex > 0) {
            currentText = currentText.substring(0, charIndex - 1);
            charIndex--;
          } else {
            // Move to the next text after deleting
            currentIndex = (currentIndex + 1) % texts.length;
            isTyping = true;
            _startTypingAnimation();
            typingTimer.cancel();
          }
        }
      });
    });
  }

  @override
  void dispose() {
    typingTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/profile.png'),
          ),
        ),
        flexibleSpace: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 180.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resume',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skills',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Portfolio',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Contact',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        // backgroundColor: const Color(0xFFD9D9D9).withOpacity(0.7),
        backgroundColor: const Color(0xFF243148),
        elevation: 20,
        shadowColor: Colors.black.withOpacity(0.25),
      ),
      backgroundColor: const Color(0xFF16243D),
      body: Padding(
        padding: const EdgeInsets.only(top: 200.0, left: 100.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to my page'.toUpperCase(),
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'Hi, I am Hundessa Serbessa',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  currentText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 740.0),
                  child: const Text(
                    'I am a fifth-year student at Arba Minch University and a dedicated full-stack web developer. I specialize in React and Next.js for front-end development, and Node.js for the back end. Recently, I have started learning Go/Gin to expand my back-end expertise. Additionally, I’m exploring app development with Flutter, mastering DevOps practices, and enhancing my web design skills with Figma. My passion lies in crafting efficient and user-focused solutions.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      height: 1.8,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 300.0,
            ),
            Column(
              children: [
                Container(
                  width: 600.0,
                  height: 600.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF16243D),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white70, // Shadow color
                        blurRadius: 10.0, // How soft the shadow is
                        spreadRadius: 2.0, // How far the shadow spreads
                        offset: Offset(1.0, 1.0), // X and Y offset
                      ),
                    ],
                  ),
                  child: OverflowBox(
                    maxHeight: 1000.0,
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      'images/ppp.png',
                      fit: BoxFit.cover,
                      height: 1000.0,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
