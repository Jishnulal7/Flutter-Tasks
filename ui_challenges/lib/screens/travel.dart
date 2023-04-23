import 'package:flutter/material.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  PageController? _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: _pageController, children: <Widget>[
        newPage(),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.deepPurple,
        )
      ]),
    );
  }
}

Widget newPage({image}) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
      image: AssetImage('assets/images/1.jpg'),
      fit: BoxFit.cover,
    )),
  );
}
