import 'dart:io';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actions: const [
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/profile.png'),
          ),
        ),
        flexibleSpace: const Column(
          children: [
            ElevatedButton(onPressed: , child: Text('Home'))
          ],
        ),
        // ],
        // backgroundColor: const Color(0xFFD9D9D9).withOpacity(0.7),
        backgroundColor: const Color(0xFF243148),
        elevation: 10,
        shadowColor: Colors.black.withOpacity(0.25),
        // toolbarHeight: 180,
      ),
      backgroundColor: const Color(0xFF16243D),
    );
  }
}
