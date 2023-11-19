import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_ppb_4/components/menu_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(padding: const EdgeInsets.only(right: 20.0),
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
          ],),

          body: Column(
            children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Find your favourite meal and stuff",
                style: GoogleFonts.bebasNeue(
                  fontSize: 56,
                ),
              ),
            ),

            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                  decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search the Menu',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              )),
            ),
            SizedBox(height: 25),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MenuTile(),
              ],
            )),
          ]),
        );
  }
}
