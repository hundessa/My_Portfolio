import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            // Outline text (bottom layer)
            Text(
              'CONTACT',
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
              left: 80.0,
              child: Text(
                'Contact Me',
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
        const SizedBox(
          height: 76,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 450.0,
                  decoration:
                      const BoxDecoration(color: Color(0xFF16243D), boxShadow: [
                    BoxShadow(
                      color: Colors.white70,
                      blurRadius: 4.0,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    )
                  ]),
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'First Name',
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Color(0xFF16243D)),
                  ),
                ),
                const SizedBox(
                  width: 80.0,
                ),
                Container(
                  width: 450.0,
                  decoration:
                      const BoxDecoration(color: Color(0xFF16243D), boxShadow: [
                    BoxShadow(
                      color: Colors.white70,
                      blurRadius: 4.0,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    )
                  ]),
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Last Name',
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Color(0xFF16243D)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 44.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 450.0,
                  decoration:
                      const BoxDecoration(color: Color(0xFF16243D), boxShadow: [
                    BoxShadow(
                      color: Colors.white70,
                      blurRadius: 4.0,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    )
                  ]),
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Color(0xFF16243D)),
                  ),
                ),
                const SizedBox(
                  width: 80.0,
                ),
                Container(
                  width: 450.0,
                  decoration:
                      const BoxDecoration(color: Color(0xFF16243D), boxShadow: [
                    BoxShadow(
                      color: Colors.white70,
                      blurRadius: 4.0,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    )
                  ]),
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Color(0xFF16243D)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45.0,
            ),
            Container(
              width: 980.0,
              height: 230.0,
              decoration:
                  const BoxDecoration(color: Color(0xFF16243D), boxShadow: [
                BoxShadow(
                  color: Colors.white70,
                  blurRadius: 4.0,
                  spreadRadius: 0,
                  offset: Offset(0, 0),
                )
              ]),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                maxLines: 10,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Message',
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Color(0xFF16243D)),
              ),
            ),
            const SizedBox(height: 45.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF162747),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 430, vertical: 16),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero)),
              child: const Text(
                'Send Message',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ],
    );
  }
}
