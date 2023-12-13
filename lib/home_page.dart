import 'package:flutter/material.dart';
import 'package:orderqueue/components/my_timeline_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: ListView(
          children: const [
            //Start Timeline
            MyTimelineTile(
              isFirst: true,
              isLast: false,
              isPast: true,
              eventCard: Text('ORDER PLACED'),
            ),
            //Middle Timeline
            MyTimelineTile(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventCard: Text('ORDER DELIVERED'),
            ),
            //End Timeline
            MyTimelineTile(
              isFirst: false,
              isLast: true,
              isPast: false,
              eventCard: Text('ORDER DONE'),
            ),
          ],
        ),
      ),
    );
  }
}
