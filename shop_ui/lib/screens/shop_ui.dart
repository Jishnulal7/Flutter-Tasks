import 'package:flutter/material.dart';

class ShopUi extends StatelessWidget {
  const ShopUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
              height: 100,
              child: Row(
                children: [
                  const Icon(Icons.arrow_back),
                  Container(
                    height: 90,
                    width: 220,
                    child: Column(
                      children: const [
                        SizedBox(height: 15),
                        Text("Men's Original")

                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
