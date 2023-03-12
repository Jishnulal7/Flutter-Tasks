import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  Message({super.key});

  List names = ['Jishnulal', 'Ajay', 'Sageer', "Neethu"];

  List images = [
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
    'assets/images/pic3.jpg',
    // 'assets/images/pic4.jpg,',
    'assets/images/pic5.jpg',
  ];
  List sub = [
    'Now is the winter of our discontent',
    'Made glorious summer by this sun of York;',
    "And all the clouds that lour'd upon our house",
    'In the deep bosom of the ocean buried.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Messages'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              itemCount: names.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(55),
                      child: Image.asset(images[index])),
                  title: Text(names[index]),
                  subtitle: Text(sub[index]),
                  trailing: const Icon(Icons.forward),
                );
              }),separatorBuilder: (context, index) {
                return const Divider();
              },),
        ),
      ),
    );
  }
}
