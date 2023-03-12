import 'package:flutter/material.dart';

class ShopUi2 extends StatelessWidget {
  const ShopUi2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          leading: const Icon(Icons.arrow_back),
          trailing: const Icon(Icons.shopping_cart),
          title: Column(
            children: [
              const Text("Men's Original", style: TextStyle(fontSize: 15)),
              Column(
                children: const [
                  Text("Smitch Shoes",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 400,
                  child: Image.network(
                      'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fG1lbnMlMjBzaG9lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 200, top: 10),
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.red,
                    child: const Icon(Icons.favorite),
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      )),);
  }
}
