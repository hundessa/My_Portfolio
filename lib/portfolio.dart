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
                                onPressed: () => _projectOne(context),
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

  // void _projectOne(context) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     backgroundColor:
  //         Colors.transparent, // Ensure no default modal styling interferes
  //     builder: (BuildContext context) {
  //       return Container(
  //         width: double.infinity, // Full width for the modal
  //         height: MediaQuery.of(context).size.height *
  //             0.8, // Adjust height as needed
  //         decoration: const BoxDecoration(
  //           color: Color(0xFF16243D),
  //           borderRadius: BorderRadius.vertical(
  //             top: Radius.circular(25.0),
  //           ),
  //         ),
  //         padding: const EdgeInsets.all(16.0),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             const Center(
  //               child: Text(
  //                 "Project One Details",
  //                 style: TextStyle(
  //                   fontSize: 24,
  //                   fontWeight: FontWeight.bold,
  //                   color: Colors.white,
  //                 ),
  //               ),
  //             ),
  //             const SizedBox(height: 16.0),
  //             const Text(
  //               "This is a detailed description of Project One. You can add more content here to showcase what this project is about.",
  //               style: TextStyle(fontSize: 16.0, color: Colors.white70),
  //             ),
  //             const Spacer(),
  //             ElevatedButton(
  //               onPressed: () => Navigator.pop(context),
  //               child: const Text("Close"),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  void _projectOne(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width, // Full screen width
            height: MediaQuery.of(context).size.height *
                0.8, // 80% of screen height
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Color(0xFF16243D),
            ),
            child: Stack(
              children: [
                // Main content with scroll
                Padding(
                  padding:
                      const EdgeInsets.only(top: 60.0), // Space for the button
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16.0),
                        Center(
                          child: SizedBox(
                            height: 400.0,
                            child: Image.asset('images/portfolio1.png'),
                          ),
                        ),
                        const SizedBox(height: 60.0),
                        const Text(
                          "Project One Details",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        const Text(
                          'Date: Apr 12, 2023 - Jan 20, 2023',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        const Text(
                          'Service: Web Application',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(height: 60.0),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        const SizedBox(height: 60.0),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        const SizedBox(height: 60.0),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        const SizedBox(height: 60.0),
                      ],
                    ),
                  ),
                ),
                // Fixed Close button at the top
                Positioned(
                  top: 0,
                  right: 0,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Close"),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
