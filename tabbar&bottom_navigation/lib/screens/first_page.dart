import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selected_index = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30);
  static const List<Widget> _widgets = <Widget>[
    Text(
      'Index 0 : Home',
      style: optionStyle,
    ),
    Text(
      'Index 0 : Dashboard',
      style: optionStyle,
    ),
    Text(
      'Index 0 : Settings',
      style: optionStyle,
    )
  ];
  void _onTap(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: const Center(child: Text('My Home Page')),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.new_label), label: 'Dashboard'),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: "Settings"),
      ],
      currentIndex: _selected_index,
      onTap: _onTap,),
    );
  }
}
