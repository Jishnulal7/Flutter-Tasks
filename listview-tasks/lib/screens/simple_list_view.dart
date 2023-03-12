import 'package:flutter/material.dart';

class SimpleListView extends StatelessWidget {
  const SimpleListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple ListView in Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              children: const [
                Icon(Icons.alarm),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Alarm',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Icon(Icons.android),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Android',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Icon(Icons.announcement),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Announcement',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Icon(Icons.apps),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Apps',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Icon(Icons.archive),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Archive',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Icon(Icons.assessment),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Assessment',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Icon(Icons.backup),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Backup',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
