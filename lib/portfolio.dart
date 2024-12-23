import 'package:flutter/material.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 76.0),
          child: Column(
            children: [
              // "MY RESUME" Text
              Stack(
                children: [
                  // Outline text (bottom layer)
                  Text(
                    'MY PORTFOLIO',
                    style: TextStyle(
                      fontSize: 90,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = Colors.white,
                      shadows: [
                        Shadow(
                          offset: const Offset(0, 0),
                          blurRadius: 0,
                          color: const Color(0xFFDF6363)
                              .withAlpha((0.5 * 255).toInt()),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Positioned(
                    top: 40.0,
                    left: 230.0,
                    child: Text(
                      'My Works',
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
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 300.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 600.0,
                    height: 600.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF16243D),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white70, // Shadow color
                          blurRadius: 5.0, // How soft the shadow is
                          spreadRadius: 0, // How far the shadow spreads
                          offset: Offset(0, 0), // X and Y offset
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Column(
                        children: [
                          Image.asset('images/portfolio1.png'),
                          const Spacer(),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, bottom: 30.0),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Project One',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 100.0,
                  ),
                  Container(
                    width: 600.0,
                    height: 600.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF16243D),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white70, // Shadow color
                          blurRadius: 5.0, // How soft the shadow is
                          spreadRadius: 0, // How far the shadow spreads
                          offset: Offset(0, 0), // X and Y offset
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Image.asset('images/portfolio2.jpg'),
                          ),
                          const Spacer(),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, bottom: 30.0),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Project One',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 90,
              ),
              Row(
                children: [
                  Container(
                    width: 600.0,
                    height: 600.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF16243D),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white70, // Shadow color
                          blurRadius: 5.0, // How soft the shadow is
                          spreadRadius: 0, // How far the shadow spreads
                          offset: Offset(0, 0), // X and Y offset
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Image.asset('images/portfolio3.jpg'),
                          ),
                          const Spacer(),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, bottom: 30.0),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Project One',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 100.0,
                  ),
                  Container(
                    width: 600.0,
                    height: 600.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF16243D),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white70, // Shadow color
                          blurRadius: 5.0, // How soft the shadow is
                          spreadRadius: 0, // How far the shadow spreads
                          offset: Offset(0, 0), // X and Y offset
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Image.asset('images/portfolio4.jpg'),
                          ),
                          const Spacer(),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, bottom: 30.0),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Project One',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
