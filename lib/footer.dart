import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Hundessa Serbessa',
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 56,
        ),
        const Text(
          'Addis Abeba, Ethiopia',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(
          height: 56,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '+251960135958',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(width: 34),
            Text(
              '|',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(width: 34),
            Text(
              'hundserb@gmail.com',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
        const SizedBox(
          height: 56,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.instagram),
              color: Colors.white,
              iconSize: 40.0,
              onPressed: () {},
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.linkedin),
              color: Colors.white,
              iconSize: 40.0,
              onPressed: () {},
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.telegram),
              color: Colors.white,
              iconSize: 40.0,
              onPressed: () {},
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.facebook),
              color: Colors.white,
              iconSize: 40.0,
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
