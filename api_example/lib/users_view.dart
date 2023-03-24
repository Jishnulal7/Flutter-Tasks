import 'package:flutter/material.dart';

class ViewUsers extends StatelessWidget {
  const ViewUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
              title: const Text('Name:'),
              subtitle: const Text('Email'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children:  <Widget>[
                  IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.delete)),
                ],
              ));
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 5,
      ),
    );
  }
}
