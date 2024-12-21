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
                  left: 80.0,
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
      ],
    );
  }
}
