import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? type;
  TextEditingController story = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anime Studio")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text("Anime Studio",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),

            TextField(
              controller: story,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: "Apni Kahani Hindi Me Likho",
              ),
            ),

            RadioListTile(
              title: const Text("Storyboard PDF Chahiye"),
              value: "pdf",
              groupValue: type,
              onChanged: (v) => setState(() => type = v.toString()),
            ),

            RadioListTile(
              title: const Text("Animation Video Chahiye"),
              value: "video",
              groupValue: type,
              onChanged: (v) => setState(() => type = v.toString()),
            ),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Agla Step"),
            )
          ],
        ),
      ),
    );
  }
}
