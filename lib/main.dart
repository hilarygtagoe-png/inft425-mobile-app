import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp sets up the overall application structure, theme, and navigation.
    return MaterialApp(
      title: 'INFT 425 Assignment',
      debugShowCheckedModeBanner: false,
      // ColorScheme.fromSeed configures Material 3 using a blue primary swatch.
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic visual layout structure (AppBar, body, etc.).
    return Scaffold(
      // AppBar displays the top toolbar with your title.
      appBar: AppBar(
        title: const Text('INFT 425 - GABRIELA TAGOE'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // Center widget centers its child horizontally and vertically within the Scaffold body.
      body: Center(
        // Column displays its list of children vertically.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Text widget 1: "Hello World" in 33pt bold GOLD
            const Text(
              'Hello World',
              style: TextStyle(
                fontSize: 33.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber, // Gold color in Flutter standard palette
              ),
            ),
            const SizedBox(height: 16.0), // SizedBox adds spacing between widgets

            // Icon widget: Flutter/Code icon in green with size 50px
            const Icon(
              Icons.code,
              size: 50.0,
              color: Colors.green,
            ),
            const SizedBox(height: 16.0),

            // Text widget 2: Department name in 16pt italic, text-aligned to center
            const Text(
              'Department of Computing Sciences and Engineering',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 24.0),

            // Extra Widget: An interactive ElevatedButton with an icon and text label
            ElevatedButton.icon(
              onPressed: () {
                // Action triggered when pressed
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Welcome to Flutter App Development!')),
                );
              },
              icon: const Icon(Icons.rocket_launch),
              label: const Text('Explore Mobile Dev'),
            ),
          ],
        ),
      ),
    );
  }
}