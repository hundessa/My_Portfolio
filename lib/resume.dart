import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            // "MY RESUME" Text
            Stack(
              children: [
                // Outline text (bottom layer)
                Text(
                  'MY RESUME',
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
                        offset: const Offset(-6.0, 2.0),
                        blurRadius: 0,
                        color: const Color(0xFFDF6363)
                            .withAlpha((0.5 * 255).toInt()),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                // Filled text (top layer)
                Positioned(
                  top: 40.0,
                  left: 170.0,
                  child: Text(
                    'About Me',
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
          padding: const EdgeInsets.symmetric(horizontal: 300.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Education',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 40),
                  ),
                ],
              ),
              const SizedBox(
                height: 46.0,
              ),
              Row(
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    width: 572,
                    height: 270,
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
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        top: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bachelor\'s in Software Engineering',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            'Arba Minch University (2022 - Present)',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                          Spacer(),
                          Text(
                            'Relevant coursework:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Padding(
                            padding: EdgeInsets.only(bottom: 30.0),
                            child: Text(
                              'C++, Java, Database Management, Algorithms and Data Structures, Web Development, Requirement Engineering, Networking',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Inter',
                                height: 1.5,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 120.0,
                  ),
                  Container(
                    width: 572,
                    height: 270,
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
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Evangadi tech',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            'Full Stack Web Development (Sept 2023 - Feb 2023)',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.start,
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0, right: 20.0),
                            child: Text(
                              'Acquired a strong foundation in web development, focusing on front-end and back-end technologies. Developed skills in HTML5, CSS3, Bootstrap, JavaScript, and JQuery for building responsive and dynamic web pages. Gained hands-on experience with Node.js, Express.js, and API integration for back-end development. Proficient in version control with Git and GitHub and explored modern frameworks like React for building interactive user interfaces.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Inter',
                                height: 1.5,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 572,
                    height: 270,
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
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Udemy Academy',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            'Full Stack Web Development (Nov 2023 - May -2023)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w200,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0, right: 20.0),
                            child: Text(
                              'Developed comprehensive web development skills, including proficiency in HTML5, CSS3, Bootstrap, JavaScript, and JQuery for creating responsive and interactive web applications. Gained experience with back-end technologies like Node.js, Express.js, and MongoDB, as well as API development and integration. Skilled in using Git and GitHub for version control and React for building modern, dynamic user interfaces.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Inter',
                                height: 1.5,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 76.0),
                child: Row(
                  children: [
                    Text(
                      'Experience',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 40),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 46.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 572,
                    height: 270,
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
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tria Plc',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            'Internship (April 2024 - August 2024)',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.start,
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0, right: 20.0),
                            child: Text(
                              'Gained hands-on experience in web development, focusing on testing and building modern web applications. Learned and utilized tools and technologies such as Figma for design, PostgreSQL and SQLite for databases, and front-end frameworks like React, Mantine UI and Styled Components to create user-friendly interfaces and improve functionality. Continuously explored and adopted new techniques to enhance development skills.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                // fontWeight: FontWeight.w100,
                                fontFamily: 'Inter',
                                height: 1.5,
                              ),
                              textAlign: TextAlign.justify,
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
        ),
      ],
    );
  }
}
