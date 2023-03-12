import 'package:flutter/material.dart';
import 'package:shared_preference/screen_2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextFormField(
              controller: _textController,
            ),
            ElevatedButton(
                onPressed: () {
                  saveData();
                },
                child: const Text('Button'))
          ],
        ),
      )),
    );
  }

  Future<void> saveData() async {
    print(_textController.text);

    //Shared preference
    final sharedPrefs = await SharedPreferences.getInstance();

    //Save value
    await sharedPrefs.setString('saved_value', _textController.text);
  }

  Future<void> getSavedData(BuildContext context) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final savedValue = sharedPrefs.getString('saved_value');

    if (savedValue != null) {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
        return const ScreenTwo();
      }));
    }
  }
}
