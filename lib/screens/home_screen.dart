import 'package:chef_companion/components/menu_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chef_companion/components/menu_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List of Type Menu
  final List menuType = [
    [
      'Drink',
      true,
    ],
    [
      'Eat',
      false,
    ],
  ];

  void menuTypeSelected(int index) {
    setState(() {
      menuType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "Find your favourite meal and stuff",
            style: GoogleFonts.bebasNeue(
              fontSize: 56,
            ),
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
              decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: 'Search the Menu',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
            ),
          )),
        ),

        const SizedBox(height: 25),

        // Tampilan Horizontal
        Container(
          height: 50,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menuType.length,
              itemBuilder: (context, index) {
                return MenuType(
                  menuType: menuType[index][0],
                  isSelected: menuType[index][1],
                  onTap: () {
                    menuTypeSelected(index);
                  },
                );
              }),
        ),

        // Tampilan List.
        Expanded(
            child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            MenuTile(),
          ],
        )),
      ]),
    );
  }
}
