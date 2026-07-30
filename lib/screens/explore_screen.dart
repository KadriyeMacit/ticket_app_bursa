import 'package:flutter/material.dart';
import 'package:ticket_app_bursa/screens/event_detail.screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Keşfet")),
      body: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        EventDetailScreen(title: "Bursa Sempozyumu $index"),
                  ),
                );
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(children: [Text("Bursa Sempozyumu $index")]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
