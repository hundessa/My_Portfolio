import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            // "MY RESUME" Text
            Stack(
              children: [
                // Outline text (bottom layer)
                Text(
                  'SKILLS',
                  style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1
                      ..color = Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                // Filled text (top layer)
                Positioned(
                  top: 40.0,
                  left: 60.0,
                  child: Text(
                    'My Skills',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.white, // No color for inner fill
                      shadows: [
                        Shadow(
                          offset: const Offset(4.0, 4.0), // Offset in x and y
                          blurRadius: 7.0, // How blurry the shadow is
                          color: Colors.black
                              .withAlpha((0.8 * 255).toInt()), // Shadow color
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 76.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'HTML5',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 140.0,
                        height: 6.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF16243D),
                          // color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70, // Shadow color
                              blurRadius: 32.0, // How soft the shadow is
                              spreadRadius: 4.0, // How far the shadow spreads
                              offset: Offset(0, 0), // X and Y offset
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100.0),
                  Column(
                    children: [
                      const Text(
                        'CSS3',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 140.0,
                        height: 6.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF16243D),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70, // Shadow color
                              blurRadius: 32.0, // How soft the shadow is
                              spreadRadius: 4.0, // How far the shadow spreads
                              offset: Offset(0, 0), // X and Y offset
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100.0),
                  Column(
                    children: [
                      const Text(
                        'Java Script',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 140.0,
                        height: 6.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF16243D),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70, // Shadow color
                              blurRadius: 32.0, // How soft the shadow is
                              spreadRadius: 4.0, // How far the shadow spreads
                              offset: Offset(0, 0), // X and Y offset
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100.0),
                  Column(
                    children: [
                      const Text(
                        'React JS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 140.0,
                        height: 6.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF16243D),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70, // Shadow color
                              blurRadius: 32.0, // How soft the shadow is
                              spreadRadius: 4.0, // How far the shadow spreads
                              offset: Offset(0, 0), // X and Y offset
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 85.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Express JS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 140.0,
                        height: 6.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF16243D),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70, // Shadow color
                              blurRadius: 32.0, // How soft the shadow is
                              spreadRadius: 4.0, // How far the shadow spreads
                              offset: Offset(0, 0), // X and Y offset
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100.0),
                  Column(
                    children: [
                      const Text(
                        'Node JS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 140.0,
                        height: 6.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF16243D),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70, // Shadow color
                              blurRadius: 32.0, // How soft the shadow is
                              spreadRadius: 4.0, // How far the shadow spreads
                              offset: Offset(0, 0), // X and Y offset
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100.0),
                  Column(
                    children: [
                      const Text(
                        'Mongo DB',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 140.0,
                        height: 6.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF16243D),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70, // Shadow color
                              blurRadius: 32.0, // How soft the shadow is
                              spreadRadius: 4.0, // How far the shadow spreads
                              offset: Offset(0, 0), // X and Y offset
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100.0),
                  Column(
                    children: [
                      const Text(
                        'Next JS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 140.0,
                        height: 6.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF16243D),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70, // Shadow color
                              blurRadius: 32.0, // How soft the shadow is
                              spreadRadius: 4.0, // How far the shadow spreads
                              offset: Offset(0, 0), // X and Y offset
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 85.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'PostgreSQL',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 140.0,
                        height: 6.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF16243D),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70, // Shadow color
                              blurRadius: 32.0, // How soft the shadow is
                              spreadRadius: 4.0, // How far the shadow spreads
                              offset: Offset(0, 0), // X and Y offset
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100.0),
                  Column(
                    children: [
                      const Text(
                        'Sequelite',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 140.0,
                        height: 6.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF16243D),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70, // Shadow color
                              blurRadius: 32.0, // How soft the shadow is
                              spreadRadius: 4.0, // How far the shadow spreads
                              offset: Offset(0, 0), // X and Y offset
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100.0),
                  Column(
                    children: [
                      const Text(
                        'MYSQL',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 140.0,
                        height: 6.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF16243D),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70, // Shadow color
                              blurRadius: 32.0, // How soft the shadow is
                              spreadRadius: 4.0, // How far the shadow spreads
                              offset: Offset(0, 0), // X and Y offset
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 100.0),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
