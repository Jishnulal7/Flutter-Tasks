import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/screens/screen_2.dart';
import 'package:login/screen_3.dart';
import 'package:login/screens/screen_3.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Person $index'),
              subtitle: Text('Message $index'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ScreenThree(name: 'Person $index');
                }));
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 15,
        ),
      ),
    );
  }
}
