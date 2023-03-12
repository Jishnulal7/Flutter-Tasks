import 'package:flutter/material.dart';

class MarioListView extends StatelessWidget {
  const MarioListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.red,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Luffy',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/1.jpg',
                                height: 150,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {}, child: const Text('Luffy')),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    Column(
                      children: const [
                        
                      ],
                    )],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
