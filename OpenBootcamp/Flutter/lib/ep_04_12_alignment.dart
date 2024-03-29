import "package:flutter/material.dart";

void main() => runApp(const Layout());

class Centered extends StatelessWidget {
  const Centered({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Alignment")),
        body: const Center(
          child: Text("Widget centrado"),
        ),
      ),
    );
  }
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Alignment")),
        body: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
                Icon(Icons.android),
              ],
            ),
          ],
        ),
      ),
    );
  }
}