import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListViewSample extends StatelessWidget {
  const ListViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Sample'),
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('PERSON $index'),
                subtitle: Text('Message $index'),
                leading: const CircleAvatar(
                  radius: 30,
                  // backgroundImage: NetworkImage('https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/06/gojo2.jpg'),
                  backgroundImage: AssetImage('assests/images/download.jpg'),
                  backgroundColor: Colors.red,
                ),
                trailing: Text('1$index:00 PM'),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: 30),
      ),
    );
  }
}
