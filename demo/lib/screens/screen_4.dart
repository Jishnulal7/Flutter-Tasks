import 'package:flutter/material.dart';
import 'package:login/screen_3.dart';
import 'package:login/screens/screen_3.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenFour extends StatelessWidget {
  ScreenFour({super.key});
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
      return const ScreenThree(name: '',);
    }));
  }
}

}
