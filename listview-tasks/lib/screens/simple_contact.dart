import 'package:flutter/material.dart';

class SimpleContactList extends StatelessWidget {
  SimpleContactList({super.key});

  List names = [
    'Jishnulal',
    'Ajay',
    'Sageer',
    'Lal',
    'Neethu',
    'Safna',
  ];
  List contacts = [
    '+1 202-918-2132',
    '+1 505-410-2667',
    '+1 225-961-3418',
    '+1 505-684-0950',
    '+1 203-488-0203',
    '+1 505-454-6534',
  ];

  List mycolor = <Color>[
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.orange,
    Colors.grey,
    Colors.yellow,
 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleContactList'),
      ),
      body: ListView.separated(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return  ListTile(
            leading: Icon(Icons.account_circle,size: 50,
            color: mycolor[index],),
            title: Text(names[index]),
            subtitle: Text(contacts[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
