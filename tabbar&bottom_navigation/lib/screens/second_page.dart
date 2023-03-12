import 'package:flutter/material.dart';
import 'package:flutter_tasks/main.dart';
import 'package:flutter_tasks/screens/first_page.dart';

void main() => runApp(const MyApp());

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Hello"),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("Home"),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [FirstPage(),
          Center(child: Text('Chat')),
           Center(child: Text('Status')),],
          
        ),
      ),
    );
  }
}
