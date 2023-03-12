import 'package:flutter/material.dart';

class SimpleListTile extends StatelessWidget {
  const SimpleListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return const ListTile(
            leading: Text('Email',style:TextStyle(
              fontSize: 15,fontWeight: FontWeight.bold
            ) ,),
            trailing: Icon(Icons.arrow_back_ios),
            subtitle: Text('from : 1234@gmail.com'),
          );
        },
      ),
    );
  }
}
