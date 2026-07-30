import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              child: Text(
                "K",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 24),
            Text(
              "Kadriye Macit",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Email"),
                    subtitle: Text("kadriye@gmail.com"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Telefon"),
                    subtitle: Text("555 555 55 55"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Hakkında",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text("Kadriye Macit"),
          ],
        ),
      ),
    );
  }
}
