import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ViewUsers extends StatefulWidget {
  const ViewUsers({super.key});

  @override
  State<ViewUsers> createState() => _ViewUsersState();
}

class _ViewUsersState extends State<ViewUsers> {
  Future<dynamic> getData() async {
    var response =
        await get(Uri.parse('http://192.168.1.16/api_demo/view.php'));
    if (jsonDecode(response.body)[0]['result'] == 'success') {
      return jsonDecode(response.body);
    } else {
      const Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              print(snapshot.hasData);
              if (snapshot.hasError) {
                print(snapshot.error);
                return const Text('Something went wrong');
              }

              if (!snapshot.hasData) {
                const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasData && snapshot.data.length == 0) {
                return const Text("No Data found..");
              }
              return ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text('Name:${snapshot.data[index]['Name']}'),
                      subtitle: Text('Email:${snapshot.data[index]['Email']}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.delete)),
                        ],
                      ));
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: snapshot.data.length,
              );
            }),
      ),
    );
  }
}
