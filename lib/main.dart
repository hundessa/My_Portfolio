import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_portfolio/contact.dart';
import 'package:my_portfolio/footer.dart';
import 'package:my_portfolio/portfolio.dart';
import 'resume.dart';
import 'skills.dart';

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
    "DevOps Engineer",
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
    typingTimer = Timer.periodic(const Duration(milliseconds: 300), (timer) {
      setState(() {
        if (isTyping) {
          // Typing one character at a time
          if (charIndex < texts[currentIndex].length) {
            currentText += texts[currentIndex][charIndex];
            charIndex++;
          } else {
            // Pause before deleting
            isTyping = false;
            Future.delayed(const Duration(seconds: 4), () {
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
      backgroundColor: const Color(0xFF16243D),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ignore: avoid_unnecessary_containers
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 100.0,
                decoration:
                    BoxDecoration(color: const Color(0xFF243148), boxShadow: [
                  BoxShadow(
                      color: Colors.black.withAlpha((0.25 * 255).toInt()),
                      blurRadius: 5.0,
                      offset: const Offset(2.0, 2.0))
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage('images/profile.png'),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 400.0),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Home',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 40.0,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Resume',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 40.0,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Skills',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 40.0,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Portfolio',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 40.0,
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 200.0,
                left: 100.0,
              ),
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
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
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
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 140.0, bottom: 80.0),
              child: Divider(
                color: Colors.black,
                thickness: 2,
              ),
            ),
            const Resume(),
            const Padding(
              padding: EdgeInsets.only(top: 140.0, bottom: 80.0),
              child: Divider(
                color: Colors.black,
                thickness: 2,
              ),
            ),
            const Skills(),
            const Padding(
              padding: EdgeInsets.only(top: 140.0, bottom: 80.0),
              child: Divider(
                color: Colors.black,
                thickness: 2,
              ),
            ),
            const MyPortfolio(),
            const Padding(
              padding: EdgeInsets.only(top: 140.0, bottom: 80.0),
              child: Divider(
                color: Colors.black,
                thickness: 2,
              ),
            ),
            const Contact(),
            const Padding(
              padding: EdgeInsets.only(top: 140.0, bottom: 80.0),
              child: Divider(
                color: Colors.black,
                thickness: 2,
              ),
            ),
            const Footer(),
            const Padding(
              padding: EdgeInsets.only(top: 140.0, bottom: 80.0),
              child: Divider(
                color: Colors.black,
                thickness: 2,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.copyright,
                    color: Colors.white70,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    '2024 Hundessa Serbessa. All rights reserved.',
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}







//ChatGPT's code


// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'resume.dart';

// void main() {
//   runApp(const Portfolio());
// }

// class Portfolio extends StatelessWidget {
//   const Portfolio({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: PortfolioHome(),
//     );
//   }
// }

// class PortfolioHome extends StatefulWidget {
//   const PortfolioHome({super.key});

//   @override
//   State<PortfolioHome> createState() => _PortfolioHomeState();
// }

// class _PortfolioHomeState extends State<PortfolioHome> {
//   final List<String> texts = [
//     "a Web Developer",
//     "a Web Designer",
//     "Flutter Developer",
//     "DevOps Engineer",
//   ];
//   String currentText = "";
//   int currentIndex = 0;
//   int charIndex = 0;
//   bool isTyping = true;

//   late Timer typingTimer;

//   @override
//   void initState() {
//     super.initState();
//     _startTypingAnimation();
//   }

//   void _startTypingAnimation() {
//     typingTimer = Timer.periodic(const Duration(milliseconds: 300), (timer) {
//       setState(() {
//         if (isTyping) {
//           // Typing one character at a time
//           if (charIndex < texts[currentIndex].length) {
//             currentText += texts[currentIndex][charIndex];
//             charIndex++;
//           } else {
//             // Pause before deleting
//             isTyping = false;
//             Future.delayed(const Duration(seconds: 4), () {
//               _startTypingAnimation(); // Restart typing animation
//             });
//             typingTimer.cancel();
//           }
//         } else {
//           // Deleting one character at a time
//           if (charIndex > 0) {
//             currentText = currentText.substring(0, charIndex - 1);
//             charIndex--;
//           } else {
//             // Move to the next text after deleting
//             currentIndex = (currentIndex + 1) % texts.length;
//             isTyping = true;
//             _startTypingAnimation();
//             typingTimer.cancel();
//           }
//         }
//       });
//     });
//   }

//   @override
//   void dispose() {
//     typingTimer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF16243D),
//       body: Stack(
//         children: [
//           // Sticky Header
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               height: 100.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xFF243148),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withAlpha((0.25 * 255).toInt()),
//                     blurRadius: 5.0,
//                     offset: const Offset(2.0, 2.0),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.only(left: 18.0),
//                     child: CircleAvatar(
//                       radius: 40.0,
//                       backgroundImage: AssetImage('images/profile.png'),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 400.0),
//                     child: Row(
//                       children: [
//                         _buildHeaderButton('Home'),
//                         _buildHeaderButton('Resume'),
//                         _buildHeaderButton('Skills'),
//                         _buildHeaderButton('Portfolio'),
//                         _buildHeaderButton('Contact'),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Scrollable Content
//           SingleChildScrollView(
//             padding: const EdgeInsets.only(top: 120.0),
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 100.0),
//               child: Column(
//                 children: [
//                   _buildWelcomeSection(),
//                   const SizedBox(height: 300.0),
//                   const Resume(), // Include your Resume widget
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildHeaderButton(String text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: TextButton(
//         onPressed: () {},
//         child: Text(
//           text,
//           style: const TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }

//   Widget _buildWelcomeSection() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 80.0, left: 100.0, bottom: 300.0),
//       child: Row(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Welcome to my page'.toUpperCase(),
//                 style: const TextStyle(color: Colors.white),
//               ),
//               const SizedBox(height: 20.0),
//               const Text(
//                 'Hi, I am Hundessa Serbessa',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 60,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//               Text(
//                 currentText,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 60,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//               const SizedBox(height: 20.0),
//               ConstrainedBox(
//                 constraints: const BoxConstraints(maxWidth: 740.0),
//                 child: const Text(
//                   'I am a fifth-year student at Arba Minch University and a dedicated full-stack web developer. I specialize in React and Next.js for front-end development, and Node.js for the back end. Recently, I have started learning Go/Gin to expand my back-end expertise. Additionally, I’m exploring app development with Flutter, mastering DevOps practices, and enhancing my web design skills with Figma. My passion lies in crafting efficient and user-focused solutions.',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                     fontWeight: FontWeight.w300,
//                     height: 1.8,
//                   ),
//                   textAlign: TextAlign.justify,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(width: 300.0),
//           Container(
//             width: 600.0,
//             height: 600.0,
//             decoration: const BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.white70,
//                   blurRadius: 10.0,
//                   spreadRadius: 2.0,
//                   offset: Offset(1.0, 1.0),
//                 ),
//               ],
//             ),
//             child: Image.asset(
//               'images/ppp.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
