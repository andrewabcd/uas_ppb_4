import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  const MenuTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black54,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                // TO DO: Insert image
                child: Image.asset(''),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Latte',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'With Almond Milk',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('25.000 rupiah'),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Icon(Icons.add),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
