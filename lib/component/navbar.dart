import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;
  void onTap(int Index) {
    setState(() {
      selectedIndex = Index;
    });
  }

  List<Widget> widgetOptions = <Widget>[
    // profile(),
    // home(),
    // search(),
    // reels(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 51, 51, 51),
        title: Text(
          'Garis',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontStyle: FontStyle.normal),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black38,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.mark_unread_chat_alt_rounded), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_arrow), label: "Voom"),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          ],
          currentIndex: selectedIndex,
          onTap: onTap),
      body: Center(child: widgetOptions.elementAt(selectedIndex)),
    );
  }
}