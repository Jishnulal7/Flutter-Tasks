import 'package:flutter/material.dart';
import 'package:login/screens/rating.dart';
// import 'package:login/listviewsample.dart';
import 'package:login/screens/screen_1.dart';
import 'package:login/screens/screen_2.dart';
import 'package:login/screens/screen_3.dart';
import 'package:login/screens/screen_4.dart';
import 'package:shared_preferences/shared_preferences.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      // theme: ThemeData(
      //   primaryColor: Color.fromARGB(255, 18, 46, 207),
      // ),
      home: RatingDemo(),
      // routes: {
      //   'first_screen': (ctx) {
      //     return ScreenOne();
      //   },
      //   'second_screen':(ctx){
      //     return ScreenTwo();
      //   }
      // },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Hello"),
      // ),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  color: Colors.green,
                  // height: double.infinity,
                  // width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'JishnuLaL',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Click me',
                                )),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.ads_click)),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Clickme')),
                      ]),
                ),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.lightBlue,
                ),
              )),
              Expanded(
                child: Container(
                  color: Colors.brown,
                  // height: double.infinity,
                  // width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'JishnuLaL',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Click me',
                                )),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.ads_click)),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const AlertDialog(
                                      title: Text('Errorrrrr'),
                                    );
                                  });
                            },
                            child: const Text('Clickme')),
                      ]),
                ),
              )
            ]),
      ),
    );
  }
}
