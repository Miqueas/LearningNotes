import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Drawer"),
          actions: const [
            MyLikeButton(),
          ],
        ),
        drawer: const Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Text("Menu")),
              Text("Item 1"),
              Text("Item 2"),
              Text("Item 3"),
              Text("Item 4"),
              Text("Item 5"),
              Text("Item 6"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text("New"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Account",
            ),
          ]
        )
      ),
    );
  }
}

class MyLikeButton extends StatefulWidget {
  const MyLikeButton({super.key});

  @override
  State<MyLikeButton> createState() => _MyLikeButtonState();
}

class _MyLikeButtonState extends State<MyLikeButton> {
  var likedIcon = const Icon(Icons.favorite_border);
  var liked = false;

  void _doLike() {
    setState(() {
      liked = !liked;
      likedIcon = Icon((liked) ? Icons.favorite : Icons.favorite_border);
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: _doLike, icon: likedIcon);
  }
}