import 'dart:convert';

// ignore: unused_import
import 'package:api_example/users_view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var textController = TextEditingController();
  var emailController = TextEditingController();

  Future<void> sendData() async {
    var data = {'name': textController.text.trim(), 'email': emailController.text.trim()};

    var response = await post(
        Uri.parse(
          'http://192.168.1.54/api_demo/insert.php',
        ),
        body: data);
    print(response.body);
    print(response.statusCode);
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Example'),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple[150],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: textController,
              decoration: const InputDecoration(
                  labelText: ('Username'), hintText: ('Enter your username')),
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                  labelText: ('Email'), hintText: ('Enter your email')),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (textController.text.isNotEmpty &&
                      emailController.text.isNotEmpty) {
                    sendData();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('All fields required')));
                  }
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => ViewUsers()));
                },
                child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}
